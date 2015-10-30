package com.lusoft.sdk.plugin.pagehelper.sqlsource;

import java.util.List;

import org.apache.ibatis.builder.StaticSqlSource;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.ibatis.session.Configuration;

import com.lusoft.sdk.plugin.orderbyhelper.OrderByHelper;
import com.lusoft.sdk.plugin.orderbyhelper.OrderByParser;
import com.lusoft.sdk.plugin.orderbyhelper.sqlsource.OrderBySqlSource;
import com.lusoft.sdk.plugin.pagehelper.parser.Parser;

public class PageStaticSqlSource extends PageSqlSource implements OrderBySqlSource {
    private String sql;
    private List<ParameterMapping> parameterMappings;
    private Configuration configuration;
    private Parser parser;
    private SqlSource original;

    public PageStaticSqlSource(StaticSqlSource sqlSource, Parser parser) {
        MetaObject metaObject = SystemMetaObject.forObject(sqlSource);
        this.sql = (String) metaObject.getValue("sql");
        this.parameterMappings = (List<ParameterMapping>) metaObject.getValue("parameterMappings");
        this.configuration = (Configuration) metaObject.getValue("configuration");
        this.original = sqlSource;
        this.parser = parser;
    }

    @Override
    protected BoundSql getDefaultBoundSql(Object parameterObject) {
        String tempSql = sql;
        String orderBy = OrderByHelper.getOrderBy();
        if (orderBy != null) {
            tempSql = OrderByParser.converToOrderBySql(sql, orderBy);
        }
        return new BoundSql(configuration, tempSql, parameterMappings, parameterObject);
    }

    @Override
    protected BoundSql getCountBoundSql(Object parameterObject) {
        return new BoundSql(configuration, parser.getCountSql(sql), parameterMappings, parameterObject);
    }

    @Override
    protected BoundSql getPageBoundSql(Object parameterObject) {
        String tempSql = sql;
        String orderBy = OrderByHelper.getOrderBy();
        if (orderBy != null) {
            tempSql = OrderByParser.converToOrderBySql(sql, orderBy);
        }
        tempSql = parser.getPageSql(tempSql);
        return new BoundSql(configuration, tempSql, parser.getPageParameterMapping(configuration, original.getBoundSql(parameterObject)), parameterObject);
    }

    public SqlSource getOriginal() {
        return original;
    }
}
