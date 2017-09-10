.class public Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;
.super Ljava/lang/Object;
.source "JSONPojoConvertorFactory.java"

# interfaces
.implements Lorg/mortbay/util/ajax/JSON$Convertor;


# static fields
.field static class$java$lang$Object:Ljava/lang/Class;

.field static class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;


# instance fields
.field private final _fromJSON:Z

.field private final _json:Lorg/mortbay/util/ajax/JSON;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;)V
    .locals 1
    .param p1, "json"    # Lorg/mortbay/util/ajax/JSON;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_fromJSON:Z

    .line 40
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/mortbay/util/ajax/JSON;Z)V
    .locals 1
    .param p1, "json"    # Lorg/mortbay/util/ajax/JSON;
    .param p2, "fromJSON"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    .line 53
    iput-boolean p2, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_fromJSON:Z

    .line 54
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 68
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
    .locals 7
    .param p1, "object"    # Ljava/util/Map;

    .prologue
    .line 89
    move-object v5, p1

    .line 90
    .local v5, "map":Ljava/util/Map;
    const-string v6, "class"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 93
    iget-object v6, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v6, v1}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 94
    .local v2, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    if-nez v2, :cond_0

    .line 98
    :try_start_0
    sget-object v6, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    if-nez v6, :cond_2

    const-string v6, "org.mortbay.util.ajax.JSON"

    invoke-static {v6}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    :goto_0
    invoke-static {v6, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 99
    .local v0, "cls":Ljava/lang/Class;
    new-instance v3, Lorg/mortbay/util/ajax/JSONPojoConvertor;

    invoke-direct {v3, v0}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .local v3, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    :try_start_1
    iget-object v6, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v6, v1, v3}, Lorg/mortbay/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 107
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    sget-object v6, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v6, :cond_3

    const-string v6, "java.lang.Object"

    invoke-static {v6}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 109
    invoke-interface {v2, p1}, Lorg/mortbay/util/ajax/JSON$Convertor;->fromJSON(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    .line 112
    .end local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .end local v5    # "map":Ljava/util/Map;
    :cond_1
    return-object v5

    .line 98
    .restart local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v5    # "map":Ljava/util/Map;
    :cond_2
    :try_start_2
    sget-object v6, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :goto_3
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    sget-object v6, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_2

    .line 102
    .end local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v3    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    goto :goto_3
.end method

.method public toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/mortbay/util/ajax/JSON$Output;

    .prologue
    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "clsName":Ljava/lang/String;
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v5, v1}, Lorg/mortbay/util/ajax/JSON;->getConvertorFor(Ljava/lang/String;)Lorg/mortbay/util/ajax/JSON$Convertor;

    move-result-object v2

    .line 64
    .local v2, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    if-nez v2, :cond_0

    .line 68
    :try_start_0
    sget-object v5, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "org.mortbay.util.ajax.JSON"

    invoke-static {v5}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;

    :goto_0
    invoke-static {v5, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    .local v0, "cls":Ljava/lang/Class;
    new-instance v3, Lorg/mortbay/util/ajax/JSONPojoConvertor;

    iget-boolean v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_fromJSON:Z

    invoke-direct {v3, v0, v5}, Lorg/mortbay/util/ajax/JSONPojoConvertor;-><init>(Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .local v3, "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    :try_start_1
    iget-object v5, p0, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->_json:Lorg/mortbay/util/ajax/JSON;

    invoke-virtual {v5, v1, v3}, Lorg/mortbay/util/ajax/JSON;->addConvertorFor(Ljava/lang/String;Lorg/mortbay/util/ajax/JSON$Convertor;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 77
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v3    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v5, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v5, :cond_2

    const-string v5, "java.lang.Object"

    invoke-static {v5}, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    :goto_2
    if-eq v6, v5, :cond_3

    .line 79
    invoke-interface {v2, p1, p2}, Lorg/mortbay/util/ajax/JSON$Convertor;->toJSON(Ljava/lang/Object;Lorg/mortbay/util/ajax/JSON$Output;)V

    .line 85
    :goto_3
    return-void

    .line 68
    :cond_1
    :try_start_2
    sget-object v5, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$org$mortbay$util$ajax$JSON:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v4

    .line 74
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :cond_2
    sget-object v5, Lorg/mortbay/util/ajax/JSONPojoConvertorFactory;->class$java$lang$Object:Ljava/lang/Class;

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5}, Lorg/mortbay/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 72
    .end local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v0    # "cls":Ljava/lang/Class;
    .restart local v3    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    :catch_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    .restart local v2    # "convertor":Lorg/mortbay/util/ajax/JSON$Convertor;
    goto :goto_4
.end method
