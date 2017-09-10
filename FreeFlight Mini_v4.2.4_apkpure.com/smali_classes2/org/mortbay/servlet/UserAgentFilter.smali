.class public Lorg/mortbay/servlet/UserAgentFilter;
.super Ljava/lang/Object;
.source "UserAgentFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# instance fields
.field private _agentCache:Ljava/util/Map;

.field private _agentCacheSize:I

.field private _attribute:Ljava/lang/String;

.field private _pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    .line 56
    const/16 v0, 0x400

    iput v0, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCacheSize:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lorg/mortbay/servlet/UserAgentFilter;->_attribute:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/servlet/UserAgentFilter;->_pattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0, p1}, Lorg/mortbay/servlet/UserAgentFilter;->getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "ua":Ljava/lang/String;
    iget-object v1, p0, Lorg/mortbay/servlet/UserAgentFilter;->_attribute:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .end local v0    # "ua":Ljava/lang/String;
    :cond_0
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    .line 79
    return-void
.end method

.method public getUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "ua"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p1, :cond_1

    .line 116
    const/4 v3, 0x0

    .line 152
    :cond_0
    :goto_0
    return-object v3

    .line 119
    :cond_1
    iget-object v5, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    monitor-enter v5

    .line 121
    :try_start_0
    iget-object v4, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "tag":Ljava/lang/String;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    if-nez v3, :cond_0

    .line 126
    iget-object v4, p0, Lorg/mortbay/servlet/UserAgentFilter;->_pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 127
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 129
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 131
    const/4 v0, 0x1

    .local v0, "g":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-gt v0, v4, :cond_5

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "group":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 135
    if-nez v3, :cond_3

    move-object v3, v1

    .line 131
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    .end local v0    # "g":I
    .end local v1    # "group":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 135
    .restart local v0    # "g":I
    .restart local v1    # "group":Ljava/lang/String;
    .restart local v2    # "matcher":Ljava/util/regex/Matcher;
    .restart local v3    # "tag":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 139
    .end local v0    # "g":I
    .end local v1    # "group":Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_5
    :goto_3
    iget-object v5, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    monitor-enter v5

    .line 146
    :try_start_2
    iget-object v4, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget v6, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCacheSize:I

    if-lt v4, v6, :cond_6

    .line 147
    iget-object v4, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 148
    :cond_6
    iget-object v4, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCache:Ljava/util/Map;

    invoke-interface {v4, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 142
    :cond_7
    move-object v3, p1

    goto :goto_3
.end method

.method public getUserAgent(Ljavax/servlet/ServletRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 101
    check-cast p1, Ljavax/servlet/http/HttpServletRequest;

    .end local p1    # "request":Ljavax/servlet/ServletRequest;
    const-string v1, "User-Agent"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "ua":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/mortbay/servlet/UserAgentFilter;->getUserAgent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 3
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "attribute"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/servlet/UserAgentFilter;->_attribute:Ljava/lang/String;

    .line 89
    const-string v2, "userAgent"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "p":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/servlet/UserAgentFilter;->_pattern:Ljava/util/regex/Pattern;

    .line 93
    :cond_0
    const-string v2, "cacheSize"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "size":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/mortbay/servlet/UserAgentFilter;->_agentCacheSize:I

    .line 96
    :cond_1
    return-void
.end method
