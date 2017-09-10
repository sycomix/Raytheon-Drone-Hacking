.class public abstract Lcom/google/gdata/wireformats/ObjectConverter;
.super Ljava/lang/Object;
.source "ObjectConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/wireformats/ObjectConverter$1;,
        Lcom/google/gdata/wireformats/ObjectConverter$MappedEnumConverter;,
        Lcom/google/gdata/wireformats/ObjectConverter$BooleanConverter;,
        Lcom/google/gdata/wireformats/ObjectConverter$EnumConverter;,
        Lcom/google/gdata/wireformats/ObjectConverter$DateTimeConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CONVERTERS:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/gdata/wireformats/ObjectConverter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/wireformats/ObjectConverter;->CONVERTERS:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    const-class v0, Lcom/google/gdata/data/DateTime;

    new-instance v1, Lcom/google/gdata/wireformats/ObjectConverter$DateTimeConverter;

    invoke-direct {v1, v2}, Lcom/google/gdata/wireformats/ObjectConverter$DateTimeConverter;-><init>(Lcom/google/gdata/wireformats/ObjectConverter$1;)V

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/ObjectConverter;->addConverter(Ljava/lang/Class;Lcom/google/gdata/wireformats/ObjectConverter;)V

    .line 46
    const-class v0, Ljava/lang/Enum;

    new-instance v1, Lcom/google/gdata/wireformats/ObjectConverter$EnumConverter;

    invoke-direct {v1, v2}, Lcom/google/gdata/wireformats/ObjectConverter$EnumConverter;-><init>(Lcom/google/gdata/wireformats/ObjectConverter$1;)V

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/ObjectConverter;->addConverter(Ljava/lang/Class;Lcom/google/gdata/wireformats/ObjectConverter;)V

    .line 47
    const-class v0, Ljava/lang/Boolean;

    new-instance v1, Lcom/google/gdata/wireformats/ObjectConverter$BooleanConverter;

    invoke-direct {v1, v2}, Lcom/google/gdata/wireformats/ObjectConverter$BooleanConverter;-><init>(Lcom/google/gdata/wireformats/ObjectConverter$1;)V

    invoke-static {v0, v1}, Lcom/google/gdata/wireformats/ObjectConverter;->addConverter(Ljava/lang/Class;Lcom/google/gdata/wireformats/ObjectConverter;)V

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    return-void
.end method

.method public static addConverter(Ljava/lang/Class;Lcom/google/gdata/wireformats/ObjectConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TV;>;",
            "Lcom/google/gdata/wireformats/ObjectConverter",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .local p1, "converter":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TV;>;"
    sget-object v0, Lcom/google/gdata/wireformats/ObjectConverter;->CONVERTERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private static getHandler(Ljava/lang/Class;)Lcom/google/gdata/wireformats/ObjectConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TV;>;)",
            "Lcom/google/gdata/wireformats/ObjectConverter",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    sget-object v1, Lcom/google/gdata/wireformats/ObjectConverter;->CONVERTERS:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/wireformats/ObjectConverter;

    .line 143
    .local v0, "handler":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TV;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lcom/google/gdata/wireformats/ObjectConverter;->CONVERTERS:Ljava/util/concurrent/ConcurrentMap;

    const-class v2, Ljava/lang/Enum;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handler":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TV;>;"
    check-cast v0, Lcom/google/gdata/wireformats/ObjectConverter;

    .line 146
    .restart local v0    # "handler":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TV;>;"
    :cond_0
    return-object v0
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 77
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lcom/google/gdata/util/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot convert value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    :goto_0
    return-object v4

    .line 100
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/wireformats/ObjectConverter;->getHandler(Ljava/lang/Class;)Lcom/google/gdata/wireformats/ObjectConverter;

    move-result-object v2

    .line 101
    .local v2, "handler":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TV;>;"
    if-eqz v2, :cond_2

    .line 102
    invoke-virtual {v2, p0, p1}, Lcom/google/gdata/wireformats/ObjectConverter;->convertValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 105
    :cond_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 106
    .local v0, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TV;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    goto :goto_0

    .line 107
    .end local v0    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TV;>;"
    .end local v2    # "handler":Lcom/google/gdata/wireformats/ObjectConverter;, "Lcom/google/gdata/wireformats/ObjectConverter<TV;>;"
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    sget-object v4, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v4, v4, Lcom/google/gdata/client/CoreErrorDomain;->missingConverter:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v3, v4}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 110
    .local v3, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No converter for type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 111
    throw v3

    .line 112
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    .end local v3    # "pe":Lcom/google/gdata/util/ParseException;
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-direct {v4, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 114
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-direct {v4, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 116
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-direct {v4, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 118
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public abstract convertValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation
.end method
