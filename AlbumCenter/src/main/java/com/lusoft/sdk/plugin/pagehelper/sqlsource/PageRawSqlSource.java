package com.lusoft.sdk.plugin.pagehelper.sqlsource;

import org.apache.ibatis.builder.StaticSqlSource;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;
import org.apache.ibatis.scripting.defaults.RawSqlSource;

import com.lusoft.sdk.plugin.orderbyhelper.sqlsource.OrderBySqlSource;
import com.lusoft.sdk.plugin.pagehelper.parser.Parser;

public class PageRawSqlSource extends PageSqlSource implements OrderBySqlSource {
    private PageSqlSource sqlSource;
    private SqlSource original;

    public PageRawSqlSource(RawSqlSource sqlSource, Parser parser) {
        MetaObject metaObject = SystemMetaObject.forObject(sqlSource);
        this.sqlSource = new PageStaticSqlSource((StaticSqlSource) metaObject.getValue("sqlSource"), parser);
        this.original = sqlSource;
    }

    @Override
    protected BoundSql getDefaultBoundSql(Object parameterObject) {
        return sqlSource.getDefaultBoundSql(parameterObject);
    }

    @Override
    protected BoundSql getCountBoundSql(Object parameterObject) {
        return sqlSource.getCountBoundSql(parameterObject);
    }

    @Override
    protected BoundSql getPageBoundSql(Object parameterObject) {
        return sqlSource.getPageBoundSql(parameterObject);
    }

    public SqlSource getOriginal() {
        return original;
    }

}