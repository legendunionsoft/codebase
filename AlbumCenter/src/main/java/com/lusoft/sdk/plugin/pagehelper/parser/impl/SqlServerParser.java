package com.lusoft.sdk.plugin.pagehelper.parser.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.session.Configuration;

import com.lusoft.sdk.plugin.pagehelper.Page;
import com.lusoft.sdk.plugin.pagehelper.SqlUtil;
import com.lusoft.sdk.plugin.pagehelper.parser.SqlServer;

public class SqlServerParser extends AbstractParser {
    private static final SqlServer pageSql = new SqlServer();

    @Override
    public boolean isSupportedMappedStatementCache() {
        //由于sqlserver每次分页参数都是直接写入到sql语句中，因此不能缓存MS
        return false;
    }

    @Override
    public List<ParameterMapping> getPageParameterMapping(Configuration configuration, BoundSql boundSql) {
        return boundSql.getParameterMappings();
    }

    @Override
    public String getPageSql(String sql) {
        Page page = SqlUtil.getLocalPage();
        return pageSql.convertToPageSql(sql, page.getStartRow(), page.getPageSize());
    }

    @Override
    public Map setPageParameter(MappedStatement ms, Object parameterObject, BoundSql boundSql, Page page) {
        return super.setPageParameter(ms, parameterObject, boundSql, page);
    }
}