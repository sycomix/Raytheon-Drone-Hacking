.class public abstract Lorg/mortbay/jetty/handler/AbstractHandlerContainer;
.super Lorg/mortbay/jetty/handler/AbstractHandler;
.source "AbstractHandlerContainer.java"

# interfaces
.implements Lorg/mortbay/jetty/HandlerContainer;


# static fields
.field static class$org$mortbay$jetty$Handler:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/mortbay/jetty/handler/AbstractHandler;-><init>()V

    .line 39
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 45
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
.method protected expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .param p1, "list"    # Ljava/lang/Object;
    .param p2, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 68
    return-object p1
.end method

.method protected expandHandler(Lorg/mortbay/jetty/Handler;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "handler"    # Lorg/mortbay/jetty/Handler;
    .param p2, "list"    # Ljava/lang/Object;
    .param p3, "byClass"    # Ljava/lang/Class;

    .prologue
    .line 74
    if-nez p1, :cond_0

    move-object v2, p2

    .line 89
    .end local p1    # "handler":Lorg/mortbay/jetty/Handler;
    .end local p2    # "list":Ljava/lang/Object;
    .local v2, "list":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 77
    .end local v2    # "list":Ljava/lang/Object;
    .restart local p1    # "handler":Lorg/mortbay/jetty/Handler;
    .restart local p2    # "list":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    :cond_1
    invoke-static {p2, p1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 80
    :cond_2
    instance-of v3, p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;

    if-eqz v3, :cond_4

    .line 81
    check-cast p1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;

    .end local p1    # "handler":Lorg/mortbay/jetty/Handler;
    invoke-virtual {p1, p2, p3}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    :cond_3
    :goto_1
    move-object v2, p2

    .line 89
    .end local p2    # "list":Ljava/lang/Object;
    .restart local v2    # "list":Ljava/lang/Object;
    goto :goto_0

    .line 82
    .end local v2    # "list":Ljava/lang/Object;
    .restart local p1    # "handler":Lorg/mortbay/jetty/Handler;
    .restart local p2    # "list":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Lorg/mortbay/jetty/HandlerContainer;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 84
    check-cast v0, Lorg/mortbay/jetty/HandlerContainer;

    .line 85
    .local v0, "container":Lorg/mortbay/jetty/HandlerContainer;
    if-nez p3, :cond_5

    invoke-interface {v0}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlers()[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    .line 86
    .local v1, "handlers":[Lorg/mortbay/jetty/Handler;
    :goto_2
    invoke-static {p2, v1}, Lorg/mortbay/util/LazyList;->addArray(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 85
    .end local v1    # "handlers":[Lorg/mortbay/jetty/Handler;
    :cond_5
    invoke-interface {v0, p3}, Lorg/mortbay/jetty/HandlerContainer;->getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;

    move-result-object v1

    goto :goto_2
.end method

.method public getChildHandlerByClass(Ljava/lang/Class;)Lorg/mortbay/jetty/Handler;
    .locals 2
    .param p1, "byclass"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, "list":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/Handler;

    goto :goto_0
.end method

.method public getChildHandlers()[Lorg/mortbay/jetty/Handler;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v1, v1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "list":Ljava/lang/Object;
    sget-object v1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.Handler"

    invoke-static {v1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/Handler;

    check-cast v1, [Lorg/mortbay/jetty/Handler;

    return-object v1

    :cond_0
    sget-object v1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getChildHandlersByClass(Ljava/lang/Class;)[Lorg/mortbay/jetty/Handler;
    .locals 2
    .param p1, "byclass"    # Ljava/lang/Class;

    .prologue
    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->expandChildren(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "list":Ljava/lang/Object;
    sget-object v1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.mortbay.jetty.Handler"

    invoke-static {v1}, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, v1}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/mortbay/jetty/Handler;

    check-cast v1, [Lorg/mortbay/jetty/Handler;

    return-object v1

    :cond_0
    sget-object v1, Lorg/mortbay/jetty/handler/AbstractHandlerContainer;->class$org$mortbay$jetty$Handler:Ljava/lang/Class;

    goto :goto_0
.end method
