.class public Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;
.super Lorg/mortbay/jetty/handler/ErrorHandler;
.source "ErrorPageErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    }
.end annotation


# static fields
.field static class$javax$servlet$ServletException:Ljava/lang/Class;


# instance fields
.field protected _errorPageList:Ljava/util/List;

.field protected _errorPages:Ljava/util/Map;

.field protected _servletContext:Ljavax/servlet/ServletContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/ErrorHandler;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public addErrorPage(IILjava/lang/String;)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "uri"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    new-instance v1, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;-><init>(Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;IILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-void
.end method

.method public addErrorPage(ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-static {p1}, Lorg/mortbay/util/TypeUtil;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public addErrorPage(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Class;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method protected doStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ErrorHandler;->doStart()V

    .line 216
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    .line 217
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    invoke-super {p0}, Lorg/mortbay/jetty/handler/ErrorHandler;->doStop()V

    .line 224
    return-void
.end method

.method public getErrorPages()Ljava/util/Map;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    return-object v0
.end method

.method public handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V
    .locals 12
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p3, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p4, "dispatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "method":Ljava/lang/String;
    const-string v10, "GET"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "POST"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "HEAD"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 65
    invoke-static {}, Lorg/mortbay/jetty/HttpConnection;->getCurrentConnection()Lorg/mortbay/jetty/HttpConnection;

    move-result-object v10

    invoke-virtual {v10}, Lorg/mortbay/jetty/HttpConnection;->getRequest()Lorg/mortbay/jetty/Request;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/mortbay/jetty/Request;->setHandled(Z)V

    .line 147
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    if-eqz v10, :cond_9

    .line 70
    const/4 v4, 0x0

    .line 71
    .local v4, "error_page":Ljava/lang/String;
    const-string v10, "javax.servlet.error.exception_type"

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 73
    .local v5, "exClass":Ljava/lang/Class;
    sget-object v10, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$javax$servlet$ServletException:Ljava/lang/Class;

    if-nez v10, :cond_1

    const-string v10, "javax.servlet.ServletException"

    invoke-static {v10}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    sput-object v10, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$javax$servlet$ServletException:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 75
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "error_page":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 76
    .restart local v4    # "error_page":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 78
    const-string v10, "javax.servlet.error.exception"

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    .line 79
    .local v9, "th":Ljava/lang/Throwable;
    :goto_2
    instance-of v10, v9, Ljavax/servlet/ServletException;

    if-eqz v10, :cond_2

    .line 80
    check-cast v9, Ljavax/servlet/ServletException;

    .end local v9    # "th":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v9

    .restart local v9    # "th":Ljava/lang/Throwable;
    goto :goto_2

    .line 73
    .end local v9    # "th":Ljava/lang/Throwable;
    :cond_1
    sget-object v10, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->class$javax$servlet$ServletException:Ljava/lang/Class;

    goto :goto_1

    .line 81
    .restart local v9    # "th":Ljava/lang/Throwable;
    :cond_2
    if-eqz v9, :cond_3

    .line 82
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 86
    .end local v9    # "th":Ljava/lang/Throwable;
    :cond_3
    :goto_3
    if-nez v4, :cond_4

    if-eqz v5, :cond_4

    .line 88
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "error_page":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 89
    .restart local v4    # "error_page":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_3

    .line 92
    :cond_4
    if-nez v4, :cond_5

    .line 95
    const-string v10, "javax.servlet.error.status_code"

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_5

    .line 98
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Lorg/mortbay/util/TypeUtil;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "error_page":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 101
    .restart local v4    # "error_page":Ljava/lang/String;
    if-nez v4, :cond_5

    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    if-eqz v10, :cond_5

    .line 104
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_5

    .line 106
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPageList:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;

    .line 107
    .local v3, "errCode":Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v3, v10}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->isInRange(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 109
    invoke-virtual {v3}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 117
    .end local v0    # "code":Ljava/lang/Integer;
    .end local v3    # "errCode":Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .end local v6    # "i":I
    :cond_5
    if-eqz v4, :cond_9

    .line 119
    const-string v10, "org.mortbay.jetty.error_page"

    invoke-interface {p2, v10}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 120
    .local v8, "old_error_page":Ljava/lang/String;
    if-eqz v8, :cond_6

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 122
    :cond_6
    const-string v10, "org.mortbay.jetty.error_page"

    invoke-interface {p2, v10, v4}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    iget-object v10, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v10, v4}, Ljavax/servlet/ServletContext;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/Dispatcher;

    .line 127
    .local v1, "dispatcher":Lorg/mortbay/jetty/servlet/Dispatcher;
    if-eqz v1, :cond_8

    .line 129
    :try_start_0
    invoke-virtual {v1, p2, p3}, Lorg/mortbay/jetty/servlet/Dispatcher;->error(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 137
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljavax/servlet/ServletException;
    const-string v10, "EXCEPTION "

    invoke-static {v10, v2}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "dispatcher":Lorg/mortbay/jetty/servlet/Dispatcher;
    .end local v2    # "e":Ljavax/servlet/ServletException;
    .end local v8    # "old_error_page":Ljava/lang/String;
    .restart local v0    # "code":Ljava/lang/Integer;
    .restart local v3    # "errCode":Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .restart local v6    # "i":I
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 134
    .end local v0    # "code":Ljava/lang/Integer;
    .end local v3    # "errCode":Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler$ErrorCodeRange;
    .end local v6    # "i":I
    .restart local v1    # "dispatcher":Lorg/mortbay/jetty/servlet/Dispatcher;
    .restart local v8    # "old_error_page":Ljava/lang/String;
    :cond_8
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "No error page "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/servlet/ServletException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    .end local v1    # "dispatcher":Lorg/mortbay/jetty/servlet/Dispatcher;
    .end local v4    # "error_page":Ljava/lang/String;
    .end local v5    # "exClass":Ljava/lang/Class;
    .end local v8    # "old_error_page":Ljava/lang/String;
    :cond_9
    invoke-super/range {p0 .. p4}, Lorg/mortbay/jetty/handler/ErrorHandler;->handle(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;I)V

    goto/16 :goto_0
.end method

.method public setErrorPages(Ljava/util/Map;)V
    .locals 0
    .param p1, "errorPages"    # Ljava/util/Map;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->_errorPages:Ljava/util/Map;

    .line 165
    return-void
.end method
