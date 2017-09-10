.class public Lorg/mortbay/jetty/servlet/Holder;
.super Lorg/mortbay/component/AbstractLifeCycle;
.source "Holder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;


# instance fields
.field protected transient _class:Ljava/lang/Class;

.field protected _className:Ljava/lang/String;

.field protected _displayName:Ljava/lang/String;

.field protected _extInstance:Z

.field protected _initParams:Ljava/util/Map;

.field protected _name:Ljava/lang/String;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "held"    # Ljava/lang/Class;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/mortbay/component/AbstractLifeCycle;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 53
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    .line 58
    :cond_0
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
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    return-void
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 65
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    new-instance v1, Ljavax/servlet/UnavailableException;

    const-string v2, "No class for Servlet or Filter"

    invoke-direct {v1, v2, v3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 69
    :cond_1
    iget-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 73
    :try_start_0
    sget-object v1, Lorg/mortbay/jetty/servlet/Holder;->class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;

    if-nez v1, :cond_3

    const-string v1, "org.mortbay.jetty.servlet.Holder"

    invoke-static {v1}, Lorg/mortbay/jetty/servlet/Holder;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/servlet/Holder;->class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;

    :goto_0
    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 74
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Holding {}"

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-static {v1, v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    :cond_2
    return-void

    .line 73
    :cond_3
    sget-object v1, Lorg/mortbay/jetty/servlet/Holder;->class$org$mortbay$jetty$servlet$Holder:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 79
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public doStop()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_extInstance:Z

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 89
    :cond_0
    return-void
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeldClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    return-object v0
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 121
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public getInitParameters()Ljava/util/Map;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    return-object v0
.end method

.method public declared-synchronized newInstance()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/InstantiationException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 169
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_displayName:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setHeldClass(Ljava/lang/Class;)V
    .locals 1
    .param p1, "held"    # Ljava/lang/Class;

    .prologue
    .line 177
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_class:Ljava/lang/Class;

    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_className:Ljava/lang/String;

    .line 179
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setInitParameters(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_initParams:Ljava/util/Map;

    .line 199
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setServletHandler(Lorg/mortbay/jetty/servlet/ServletHandler;)V
    .locals 0
    .param p1, "servletHandler"    # Lorg/mortbay/jetty/servlet/ServletHandler;

    .prologue
    .line 219
    iput-object p1, p0, Lorg/mortbay/jetty/servlet/Holder;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 220
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/mortbay/jetty/servlet/Holder;->_name:Ljava/lang/String;

    return-object v0
.end method
