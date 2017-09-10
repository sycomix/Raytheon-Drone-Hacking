.class public Lorg/mortbay/util/ajax/JSONEnumConvertor;
.super Ljava/lang/Object;
.source "JSONEnumConvertor.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# static fields
.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;


# instance fields
.field private _fromJSON:Z

.field private _valueOf:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mortbay/util/ajax/JSONEnumConvertor;-><init>(Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 5
    .param p1, "fromJSON"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "java.lang.Enum"

    invoke-static {v1, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 41
    .local v0, "e":Ljava/lang/Class;
    const-string v2, "valueOf"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v1, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$java$lang$Class:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Class"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$java$lang$Class:Ljava/lang/Class;

    :goto_0
    aput-object v1, v3, v4

    const/4 v4, 0x1

    sget-object v1, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/mortbay/util/ajax/JSONEnumConvertor;->_valueOf:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    iput-boolean p1, p0, Lorg/mortbay/util/ajax/JSONEnumConvertor;->_fromJSON:Z

    .line 57
    return-void

    .line 41
    :cond_0
    :try_start_1
    sget-object v1, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$java$lang$Class:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/mortbay/util/ajax/JSONEnumConvertor;->class$java$lang$String:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 43
    .end local v0    # "e":Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "!Enums"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
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
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 8
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-boolean v2, p0, Lorg/mortbay/util/ajax/JSONEnumConvertor;->_fromJSON:Z

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 65
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v2, "class"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    .local v0, "c":Ljava/lang/Class;
    iget-object v2, p0, Lorg/mortbay/util/ajax/JSONEnumConvertor;->_valueOf:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    const-string v7, "value"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 72
    goto :goto_0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/mortbay/util/ajax/JSON$Output;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/mortbay/util/ajax/JSONEnumConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/mortbay/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 80
    const-string v0, "value"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
