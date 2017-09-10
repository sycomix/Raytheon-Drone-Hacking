.class public Lcom/google/gdata/model/Element;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/Element$1;,
        Lcom/google/gdata/model/Element$ElementState;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final key:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end field

.field private final state:Lcom/google/gdata/model/Element$ElementState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lcom/google/gdata/model/Element;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/Element;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "elementKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const-string v0, "elementKey"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gdata/model/Element;->bindKey(Lcom/google/gdata/model/ElementKey;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Element;->key:Lcom/google/gdata/model/ElementKey;

    .line 178
    new-instance v0, Lcom/google/gdata/model/Element$ElementState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/model/Element$ElementState;-><init>(Lcom/google/gdata/model/Element$1;)V

    iput-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    .line 179
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 1
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "elementKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/gdata/model/Element;->bindKey(Lcom/google/gdata/model/ElementKey;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Element;->key:Lcom/google/gdata/model/ElementKey;

    .line 201
    iget-object v0, p2, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    iput-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/QName;)V
    .locals 2
    .param p1, "qName"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Element;->key:Lcom/google/gdata/model/ElementKey;

    .line 188
    new-instance v0, Lcom/google/gdata/model/Element$ElementState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/model/Element$ElementState;-><init>(Lcom/google/gdata/model/Element$1;)V

    iput-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    .line 189
    return-void
.end method

.method private static bindKey(Lcom/google/gdata/model/ElementKey;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;)",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 214
    .local v0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v0, p1, :cond_0

    .line 217
    .end local p0    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :goto_0
    return-object p0

    .restart local p0    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object p0

    goto :goto_0
.end method

.method private calculateKey(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 836
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "sourceKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 837
    .local v0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 842
    .local v1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    if-eq v0, v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 843
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object p1

    .line 845
    :cond_0
    return-object p1
.end method

.method private castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 997
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "obj":Ljava/lang/Object;
    return-object p1
.end method

.method private castElementList(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 979
    check-cast p1, Ljava/util/List;

    .end local p1    # "obj":Ljava/lang/Object;
    return-object p1
.end method

.method private castElementSet(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 988
    check-cast p1, Ljava/util/Set;

    .end local p1    # "obj":Ljava/lang/Object;
    return-object p1
.end method

.method private static construct(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+TT;>;[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1404
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Constructor;

    .line 1405
    .local v2, "ctcs":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<TT;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 1406
    .local v1, "ctc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 1407
    .local v5, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v5, p1}, Lcom/google/gdata/model/Element;->paramsValid([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1408
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1409
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1415
    .end local v1    # "ctc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v5    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_1
    return-object v6

    .line 1405
    .restart local v1    # "ctc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .restart local v5    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1415
    .end local v1    # "ctc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    .end local v5    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method private createCollection(Lcom/google/gdata/model/ElementKey;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 1008
    .local v0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/google/gdata/model/atom/Category;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1009
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 1011
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation

    .prologue
    .line 1330
    .local p0, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TE;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public static createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 7
    .param p1, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TE;>;",
            "Lcom/google/gdata/model/Element;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation

    .prologue
    .line 1347
    .local p0, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TE;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Element;

    .line 1377
    :goto_0
    return-object v4

    .line 1355
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v3

    .line 1359
    .local v3, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    if-eqz p1, :cond_1

    .line 1360
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/google/gdata/model/ElementKey;

    aput-object v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1361
    .local v0, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4

    const/4 v4, 0x1

    aput-object p1, v1, v4

    .line 1366
    .local v1, "args":[Ljava/lang/Object;
    :goto_1
    invoke-static {v3, v0, v1}, Lcom/google/gdata/model/Element;->construct(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 1363
    .end local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "args":[Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/google/gdata/model/ElementKey;

    aput-object v5, v0, v4

    .line 1364
    .restart local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v1, v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .restart local v1    # "args":[Ljava/lang/Object;
    goto :goto_1

    .line 1367
    .end local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1370
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    if-eqz p1, :cond_2

    .line 1371
    const/4 v4, 0x1

    :try_start_1
    new-array v0, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1372
    .restart local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    .line 1377
    .restart local v1    # "args":[Ljava/lang/Object;
    :goto_2
    invoke-static {v3, v0, v1}, Lcom/google/gdata/model/Element;->construct(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 1374
    .end local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "args":[Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/Class;

    .line 1375
    .restart local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .restart local v1    # "args":[Ljava/lang/Object;
    goto :goto_2

    .line 1379
    .end local v0    # "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "args":[Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 1380
    new-instance v4, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructor not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1382
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 1383
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructor not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1385
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 1386
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v4, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructor not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1388
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 1389
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/google/gdata/wireformats/ContentCreationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Constructor not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gdata/wireformats/ContentCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 1317
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getDefaultKey(Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;)",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    const-string/jumbo v5, "type"

    invoke-static {p0, v5}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :try_start_0
    const-string v5, "KEY"

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 94
    .local v2, "keyField":Ljava/lang/reflect/Field;
    const-class v5, Lcom/google/gdata/model/ElementKey;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    check-cast v1, Lcom/google/gdata/model/ElementKey;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 108
    .restart local v1    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    return-object v1

    .line 95
    .end local v1    # "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v2    # "keyField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    .line 96
    .local v4, "nsfe":Ljava/lang/NoSuchFieldException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to access KEY field:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 98
    .end local v4    # "nsfe":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to access KEY field:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 101
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to access KEY field:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 104
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 105
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to access KEY field:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private getElementObject(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 10
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 523
    iget-object v8, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v8}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_0

    .line 524
    const/4 v8, 0x0

    .line 546
    :goto_0
    return-object v8

    .line 526
    :cond_0
    const-string v8, "*"

    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 527
    invoke-virtual {p1}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v5

    .line 528
    .local v5, "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    if-eqz v5, :cond_4

    .line 529
    invoke-virtual {v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 531
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/gdata/model/Element;>;"
    iget-object v8, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v8}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 532
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/QName;

    .line 533
    .local v3, "key":Lcom/google/gdata/model/QName;
    invoke-virtual {v3}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v4

    .line 534
    .local v4, "keyNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 535
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 536
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Lcom/google/gdata/model/Element;

    if-eqz v8, :cond_2

    .line 537
    check-cast v7, Lcom/google/gdata/model/Element;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 539
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v7}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 543
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Ljava/lang/Object;>;"
    .end local v3    # "key":Lcom/google/gdata/model/QName;
    .end local v4    # "keyNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    goto :goto_0

    .line 546
    .end local v0    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/gdata/model/Element;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "ns":Lcom/google/gdata/util/common/xml/XmlNamespace;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v8}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0
.end method

.method private static paramsValid([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "argTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1420
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 1429
    :cond_0
    :goto_0
    return v1

    .line 1423
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1424
    aget-object v2, p0, v0

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1429
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/Attribute;)V
    .locals 2
    .param p2, "attribute"    # Lcom/google/gdata/model/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/Attribute;",
            ")V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 389
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/google/gdata/model/Element$ElementState;->access$202(Lcom/google/gdata/model/Element$ElementState;Ljava/util/Map;)Ljava/util/Map;

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    return-void
.end method

.method private throwExceptionIfLocked()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$100(Lcom/google/gdata/model/Element$ElementState;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "%s instance is read only"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 261
    return-void

    :cond_0
    move v0, v2

    .line 259
    goto :goto_0
.end method

.method private visit(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 1
    .param p1, "ev"    # Lcom/google/gdata/model/ElementVisitor;
    .param p2, "parent"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementVisitor;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 1275
    .local p3, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {p1, p2, p0, p3}, Lcom/google/gdata/model/ElementVisitor;->visit(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v0

    .line 1276
    .local v0, "visitChildren":Z
    if-eqz v0, :cond_0

    .line 1277
    invoke-direct {p0, p1, p3}, Lcom/google/gdata/model/Element;->visitChildren(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/ElementMetadata;)V

    .line 1279
    :cond_0
    invoke-interface {p1, p2, p0, p3}, Lcom/google/gdata/model/ElementVisitor;->visitComplete(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 1280
    return-void
.end method

.method private visitChildren(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 4
    .param p1, "ev"    # Lcom/google/gdata/model/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementVisitor;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 1290
    .local p2, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Element;->getElementIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v1

    .line 1291
    .local v1, "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 1293
    .local v0, "child":Lcom/google/gdata/model/Element;
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 1295
    .local v2, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :goto_1
    invoke-direct {v0, p1, p0, v2}, Lcom/google/gdata/model/Element;->visit(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    goto :goto_0

    .line 1293
    .end local v2    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    goto :goto_1

    .line 1297
    .end local v0    # "child":Lcom/google/gdata/model/Element;
    :cond_1
    return-void
.end method


# virtual methods
.method protected adapt(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/String;)Lcom/google/gdata/model/Element;
    .locals 6
    .param p1, "source"    # Lcom/google/gdata/model/Element;
    .param p3, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p2, "sourceMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {p2, p3}, Lcom/google/gdata/model/ElementMetadata;->adapt(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    .line 1201
    .local v0, "adaptorKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-eqz v0, :cond_0

    .line 1203
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/Element;->adapt(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 1210
    .end local p1    # "source":Lcom/google/gdata/model/Element;
    :cond_0
    :goto_0
    return-object p1

    .line 1204
    .restart local p1    # "source":Lcom/google/gdata/model/Element;
    :catch_0
    move-exception v1

    .line 1206
    .local v1, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    sget-object v2, Lcom/google/gdata/model/Element;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to adapt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected adapt(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 6
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TT;>;",
            "Lcom/google/gdata/model/Element;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation

    .prologue
    .line 1228
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TT;>;"
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 1230
    .local v1, "adaptingTo":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1231
    :cond_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/Element;

    .line 1237
    :goto_0
    return-object v2

    .line 1233
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1234
    .local v0, "adaptingFrom":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const-string v3, "Cannot adapt from element of type %s to an element of type %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    invoke-static {p1, p2}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v2

    goto :goto_0
.end method

.method public addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 763
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 765
    return-object p0
.end method

.method public addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 8
    .param p2, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 797
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 798
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_0

    .line 799
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v5, v6}, Lcom/google/gdata/model/Element$ElementState;->access$302(Lcom/google/gdata/model/Element$ElementState;Ljava/util/Map;)Ljava/util/Map;

    .line 802
    :cond_0
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    .line 803
    .local v2, "elementKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0, p1, v2}, Lcom/google/gdata/model/Element;->calculateKey(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementKey;

    move-result-object p1

    .line 804
    invoke-virtual {p1, v2}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 806
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 813
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    .line 814
    .local v3, "id":Lcom/google/gdata/model/QName;
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 815
    .local v4, "obj":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 816
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 807
    .end local v3    # "id":Lcom/google/gdata/model/QName;
    :catch_0
    move-exception v1

    .line 808
    .local v1, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be applied"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to element with key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 817
    .end local v1    # "e":Lcom/google/gdata/wireformats/ContentCreationException;
    .restart local v3    # "id":Lcom/google/gdata/model/QName;
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljava/util/Collection;

    if-eqz v5, :cond_3

    .line 818
    invoke-direct {p0, v4}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 819
    .local v0, "collect":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 821
    .end local v0    # "collect":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->createCollection(Lcom/google/gdata/model/ElementKey;)Ljava/util/Collection;

    move-result-object v0

    .line 822
    .restart local v0    # "collect":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    check-cast v4, Lcom/google/gdata/model/Element;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 824
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addElement(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .param p2, "element"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 780
    invoke-static {p2}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 783
    return-object p0
.end method

.method checkValue(Lcom/google/gdata/model/ElementKey;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p2, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "elementKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1074
    if-eqz p2, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v0

    .line 1076
    .local v0, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Void;

    if-eq v0, v1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "Element must not contain a text node"

    invoke-static {v1, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1078
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "Invalid class: %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    .end local v0    # "datatype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return-object p2

    .restart local v0    # "datatype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move v1, v3

    .line 1076
    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1019
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 1020
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0, v1}, Lcom/google/gdata/model/Element$ElementState;->access$402(Lcom/google/gdata/model/Element$ElementState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0, v1}, Lcom/google/gdata/model/Element$ElementState;->access$202(Lcom/google/gdata/model/Element$ElementState;Ljava/util/Map;)Ljava/util/Map;

    .line 1022
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0, v1}, Lcom/google/gdata/model/Element$ElementState;->access$302(Lcom/google/gdata/model/Element$ElementState;Ljava/util/Map;)Ljava/util/Map;

    .line 1023
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1439
    instance-of v0, p1, Lcom/google/gdata/model/Element;

    if-nez v0, :cond_0

    .line 1440
    const/4 v0, 0x0

    .line 1442
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    check-cast p1, Lcom/google/gdata/model/Element;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttributeIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/Attribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    new-instance v0, Lcom/google/gdata/model/AttributeIterator;

    iget-object v1, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v1}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/gdata/model/AttributeIterator;-><init>(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Map;)V

    return-object v0
.end method

.method public getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/AttributeKey",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TT;>;"
    const/4 v4, 0x0

    .line 346
    iget-object v3, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v3}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v0, v4

    .line 348
    .local v0, "attribute":Lcom/google/gdata/model/Attribute;
    :goto_0
    if-nez v0, :cond_1

    move-object v2, v4

    .line 349
    .local v2, "value":Ljava/lang/Object;
    :goto_1
    if-nez v2, :cond_2

    move-object v3, v4

    .line 353
    :goto_2
    return-object v3

    .line 346
    .end local v0    # "attribute":Lcom/google/gdata/model/Attribute;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    iget-object v3, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v3}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gdata/model/Attribute;

    move-object v0, v3

    goto :goto_0

    .line 348
    .restart local v0    # "attribute":Lcom/google/gdata/model/Attribute;
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 353
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Lcom/google/gdata/util/ParseException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to convert value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to datatype "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getDatatype()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAttributeValue(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v2, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v2}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-object v1

    .line 331
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v2}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Attribute;

    .line 332
    .local v0, "attribute":Lcom/google/gdata/model/Attribute;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TD;TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TT;>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 507
    .local v0, "child":Lcom/google/gdata/model/Element;
    if-nez v0, :cond_0

    .line 508
    const/4 v2, 0x0

    .line 511
    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/model/Element;->adapt(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to adapt to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/Element;
    .locals 3
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, "mapValue":Ljava/lang/Object;
    instance-of v1, v0, Lcom/google/gdata/model/Element;

    if-eqz v1, :cond_0

    .line 487
    check-cast v0, Lcom/google/gdata/model/Element;

    .line 492
    .end local v0    # "mapValue":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 489
    .restart local v0    # "mapValue":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Ljava/util/Collection;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    const-string v2, "The getElement(*) method was called for a repeating element.  Use getElements(*) instead."

    invoke-static {v1, v2}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 492
    const/4 v0, 0x0

    goto :goto_0

    .line 489
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getElementCount()I
    .locals 4

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "elementCount":I
    iget-object v3, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v3}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 465
    iget-object v3, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v3}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 466
    .local v1, "elementValue":Ljava/lang/Object;
    instance-of v3, v1, Ljava/util/Collection;

    if-eqz v3, :cond_0

    .line 467
    invoke-direct {p0, v1}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v1    # "elementValue":Ljava/lang/Object;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v0
.end method

.method public getElementId()Lcom/google/gdata/model/QName;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/gdata/model/Element;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    return-object v0
.end method

.method public getElementIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->getElementIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getElementIterator(Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    new-instance v0, Lcom/google/gdata/model/ElementIterator;

    iget-object v1, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v1}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/gdata/model/ElementIterator;-><init>(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Map;)V

    return-object v0
.end method

.method public getElementKey()Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/gdata/model/Element;->key:Lcom/google/gdata/model/ElementKey;

    return-object v0
.end method

.method public getElementSet(Lcom/google/gdata/model/ElementKey;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TT;>;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TT;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 689
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v4

    .line 690
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 691
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 692
    .local v1, "childType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    instance-of v5, v4, Lcom/google/gdata/model/Element;

    if-eqz v5, :cond_1

    .line 693
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 694
    invoke-virtual {v1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 708
    .end local v1    # "childType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    return-object v5

    .line 701
    .restart local v1    # "childType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/Element;

    .line 702
    .local v2, "e":Lcom/google/gdata/model/Element;
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 703
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0
.end method

.method public getElementSet(Lcom/google/gdata/model/QName;)Ljava/util/Set;
    .locals 5
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 662
    .local v0, "builder":Lcom/google/common/collect/ImmutableSet$Builder;, "Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/gdata/model/Element;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v3

    .line 663
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 664
    instance-of v4, v3, Lcom/google/gdata/model/Element;

    if-eqz v4, :cond_1

    .line 665
    check-cast v3, Lcom/google/gdata/model/Element;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    .line 672
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    return-object v4

    .line 667
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 668
    .local v1, "e":Lcom/google/gdata/model/Element;
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0
.end method

.method public getElementValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TV;+",
            "Lcom/google/gdata/model/Element;",
            ">;)TV;"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TV;+Lcom/google/gdata/model/Element;>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 580
    .local v0, "e":Lcom/google/gdata/model/Element;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getElementValue(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 563
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 564
    .local v0, "e":Lcom/google/gdata/model/Element;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<*TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*TT;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 631
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v4

    .line 632
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 633
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v1

    .line 634
    .local v1, "childType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    instance-of v5, v4, Lcom/google/gdata/model/Element;

    if-eqz v5, :cond_1

    .line 635
    invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 636
    invoke-virtual {v1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 650
    .end local v1    # "childType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5

    .line 643
    .restart local v1    # "childType":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    :cond_1
    invoke-direct {p0, v4}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/Element;

    .line 644
    .local v2, "e":Lcom/google/gdata/model/Element;
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 645
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0
.end method

.method public getElements(Lcom/google/gdata/model/QName;)Ljava/util/List;
    .locals 5
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 604
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/gdata/model/Element;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v3

    .line 605
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 606
    instance-of v4, v3, Lcom/google/gdata/model/Element;

    if-eqz v4, :cond_1

    .line 607
    check-cast v3, Lcom/google/gdata/model/Element;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 614
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    return-object v4

    .line 609
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 610
    .local v1, "e":Lcom/google/gdata/model/Element;
    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0
.end method

.method public getTextValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$400(Lcom/google/gdata/model/Element$ElementState;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/ElementKey",
            "<TV;*>;)TV;"
        }
    .end annotation

    .prologue
    .line 1042
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TV;*>;"
    iget-object v1, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v1}, Lcom/google/gdata/model/Element$ElementState;->access$400(Lcom/google/gdata/model/Element$ElementState;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v1}, Lcom/google/gdata/model/Element$ElementState;->access$400(Lcom/google/gdata/model/Element$ElementState;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gdata/util/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1050
    :goto_0
    return-object v1

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Lcom/google/gdata/util/ParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to datatype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getDatatype()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    .end local v0    # "e":Lcom/google/gdata/util/ParseException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "childKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/QName;)Z

    move-result v0

    return v0
.end method

.method public hasAttribute(Lcom/google/gdata/model/QName;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasElement(Lcom/google/gdata/model/ElementKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->hasElement(Lcom/google/gdata/model/QName;)Z

    move-result v0

    return v0
.end method

.method public hasElement(Lcom/google/gdata/model/QName;)Z
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasTextValue()Z
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$400(Lcom/google/gdata/model/Element$ElementState;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isLocked()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$100(Lcom/google/gdata/model/Element$ElementState;)Z

    move-result v0

    return v0
.end method

.method public lock()Lcom/google/gdata/model/Element;
    .locals 7

    .prologue
    .line 235
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/google/gdata/model/Element$ElementState;->access$102(Lcom/google/gdata/model/Element$ElementState;Z)Z

    .line 236
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Attribute;

    .line 238
    .local v0, "att":Lcom/google/gdata/model/Attribute;
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->lock()Lcom/google/gdata/model/Attribute;

    goto :goto_0

    .line 241
    .end local v0    # "att":Lcom/google/gdata/model/Attribute;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v5}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 243
    .local v2, "childObj":Ljava/lang/Object;
    instance-of v5, v2, Lcom/google/gdata/model/Element;

    if-eqz v5, :cond_2

    .line 244
    check-cast v2, Lcom/google/gdata/model/Element;

    .end local v2    # "childObj":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    goto :goto_1

    .line 246
    .restart local v2    # "childObj":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, v2}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 247
    .local v1, "child":Lcom/google/gdata/model/Element;
    invoke-virtual {v1}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    goto :goto_2

    .line 252
    .end local v1    # "child":Lcom/google/gdata/model/Element;
    .end local v2    # "childObj":Ljava/lang/Object;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-object p0
.end method

.method protected narrow(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 7
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 1167
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {p1}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 1168
    .local v1, "narrowedKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v1}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v2

    .line 1169
    .local v2, "narrowedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1172
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1173
    sget-object v3, Lcom/google/gdata/model/Element;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be narrowed to type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 1179
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1, p0}, Lcom/google/gdata/model/Element;->adapt(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1185
    .end local p0    # "this":Lcom/google/gdata/model/Element;
    :cond_1
    :goto_0
    return-object p0

    .line 1180
    .restart local p0    # "this":Lcom/google/gdata/model/Element;
    :catch_0
    move-exception v0

    .line 1181
    .local v0, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    sget-object v3, Lcom/google/gdata/model/Element;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to adapt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeAttribute(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 423
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeAttributeValue(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->removeAttributeValue(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeAttributeValue(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 3
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 412
    iget-object v1, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v1}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, v2

    .line 414
    .local v0, "removed":Lcom/google/gdata/model/Attribute;
    :goto_0
    if-nez v0, :cond_1

    move-object v1, v2

    :goto_1
    return-object v1

    .line 412
    .end local v0    # "removed":Lcom/google/gdata/model/Attribute;
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v1}, Lcom/google/gdata/model/Element$ElementState;->access$200(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Attribute;

    move-object v0, v1

    goto :goto_0

    .line 414
    .restart local v0    # "removed":Lcom/google/gdata/model/Attribute;
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1
.end method

.method public removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 871
    .local p1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public removeElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/Element;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 857
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v0}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_0
    return-object p0
.end method

.method public removeElement(Lcom/google/gdata/model/Element;)Z
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 883
    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public removeElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Z
    .locals 5
    .param p2, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 896
    .local p1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 897
    const/4 v3, 0x0

    .line 898
    .local v3, "removed":Z
    iget-object v4, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v4}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 899
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;->getElementObject(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v2

    .line 900
    .local v2, "obj":Ljava/lang/Object;
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_3

    .line 901
    invoke-direct {p0, v2}, Lcom/google/gdata/model/Element;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 902
    .local v0, "collect":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 903
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 904
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 905
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 906
    const/4 v3, 0x1

    .line 910
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 911
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 918
    .end local v0    # "collect":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    :goto_0
    return v3

    .line 913
    .restart local v2    # "obj":Ljava/lang/Object;
    :cond_3
    if-ne v2, p2, :cond_2

    .line 914
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 915
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public replaceElement(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;)Z
    .locals 7
    .param p1, "toRemove"    # Lcom/google/gdata/model/Element;
    .param p2, "toAdd"    # Lcom/google/gdata/model/Element;

    .prologue
    const/4 v4, 0x1

    .line 931
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 934
    if-nez p2, :cond_1

    .line 935
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v4

    .line 969
    :cond_0
    :goto_0
    return v4

    .line 939
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v1

    .line 940
    .local v1, "id":Lcom/google/gdata/model/QName;
    invoke-virtual {p2}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 941
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v4

    .line 942
    .local v4, "removed":Z
    if-eqz v4, :cond_0

    .line 943
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 949
    .end local v4    # "removed":Z
    :cond_2
    iget-object v6, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v6}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 950
    iget-object v6, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v6}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 951
    .local v3, "obj":Ljava/lang/Object;
    instance-of v6, v3, Ljava/util/List;

    if-eqz v6, :cond_4

    .line 952
    invoke-direct {p0, v3}, Lcom/google/gdata/model/Element;->castElementList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 953
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 954
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_3

    .line 955
    invoke-interface {v2, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 953
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 959
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    :cond_4
    instance-of v6, v3, Ljava/util/Set;

    if-eqz v6, :cond_6

    .line 960
    invoke-direct {p0, v3}, Lcom/google/gdata/model/Element;->castElementSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    .line 961
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 962
    invoke-interface {v5, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 969
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/model/Element;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 964
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_6
    if-ne v3, p1, :cond_5

    .line 965
    iget-object v6, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    invoke-static {v6}, Lcom/google/gdata/model/Element$ElementState;->access$300(Lcom/google/gdata/model/Element$ElementState;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resolve(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentValidationException;
        }
    .end annotation

    .prologue
    .line 1103
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    new-instance v1, Lcom/google/gdata/model/ValidationContext;

    invoke-direct {v1}, Lcom/google/gdata/model/ValidationContext;-><init>()V

    .line 1104
    .local v1, "vc":Lcom/google/gdata/model/ValidationContext;
    invoke-virtual {p0, p1, v1}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 1105
    .local v0, "narrowed":Lcom/google/gdata/model/Element;
    invoke-virtual {v1}, Lcom/google/gdata/model/ValidationContext;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1106
    new-instance v2, Lcom/google/gdata/wireformats/ContentValidationException;

    const-string v3, "Invalid data"

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/wireformats/ContentValidationException;-><init>(Ljava/lang/String;Lcom/google/gdata/model/ValidationContext;)V

    throw v2

    .line 1108
    :cond_0
    return-object v0
.end method

.method public resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;
    .locals 10
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-nez p1, :cond_0

    .line 1148
    .end local p0    # "this":Lcom/google/gdata/model/Element;
    :goto_0
    return-object p0

    .line 1125
    .restart local p0    # "this":Lcom/google/gdata/model/Element;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/model/Element;->narrow(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v4

    .line 1126
    .local v4, "narrowed":Lcom/google/gdata/model/Element;
    invoke-virtual {v4, p1, p2}, Lcom/google/gdata/model/Element;->validate(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)V

    .line 1129
    invoke-virtual {v4}, Lcom/google/gdata/model/Element;->getElementIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1130
    .local v1, "childIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1131
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1133
    .local v6, "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/base/Pair<Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Element;

    .line 1135
    .local v0, "child":Lcom/google/gdata/model/Element;
    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v8

    invoke-interface {p1, v8}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v2

    .line 1137
    .local v2, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-virtual {v0, v2, p2}, Lcom/google/gdata/model/Element;->resolve(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)Lcom/google/gdata/model/Element;

    move-result-object v7

    .line 1138
    .local v7, "resolved":Lcom/google/gdata/model/Element;
    if-eq v7, v0, :cond_1

    .line 1139
    invoke-static {v0, v7}, Lcom/google/gdata/util/common/base/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Pair;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1144
    .end local v0    # "child":Lcom/google/gdata/model/Element;
    .end local v2    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v7    # "resolved":Lcom/google/gdata/model/Element;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/util/common/base/Pair;

    .line 1145
    .local v5, "pair":Lcom/google/gdata/util/common/base/Pair;, "Lcom/google/gdata/util/common/base/Pair<Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;>;"
    invoke-virtual {v5}, Lcom/google/gdata/util/common/base/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/model/Element;

    invoke-virtual {v5}, Lcom/google/gdata/util/common/base/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gdata/model/Element;

    invoke-virtual {v4, v8, v9}, Lcom/google/gdata/model/Element;->replaceElement(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;)Z

    goto :goto_2

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pair":Lcom/google/gdata/util/common/base/Pair;, "Lcom/google/gdata/util/common/base/Pair<Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;>;"
    .end local v6    # "replacements":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/base/Pair<Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;>;>;"
    :cond_3
    move-object p0, v4

    .line 1148
    goto :goto_0
.end method

.method protected sameClassAs(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1305
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;
    .locals 1
    .param p2, "attrValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    if-nez p2, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    .line 381
    :goto_0
    return-object p0

    .line 379
    :cond_0
    new-instance v0, Lcom/google/gdata/model/Attribute;

    invoke-direct {v0, p1, p2}, Lcom/google/gdata/model/Attribute;-><init>(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/Element;->setAttribute(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/Attribute;)V

    goto :goto_0
.end method

.method public setAttributeValue(Lcom/google/gdata/model/QName;Ljava/lang/Object;)Lcom/google/gdata/model/Element;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .param p2, "attrValue"    # Ljava/lang/Object;

    .prologue
    .line 365
    invoke-static {p1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public setElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 1
    .param p1, "element"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 732
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {p1}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/Element;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 734
    return-object p0
.end method

.method public setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 0
    .param p2, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/Element;",
            ")",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 748
    if-eqz p2, :cond_0

    .line 749
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 751
    :cond_0
    return-object p0
.end method

.method public setElement(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 0
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .param p2, "element"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 717
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->removeElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/Element;

    .line 718
    if-eqz p2, :cond_0

    .line 719
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 721
    :cond_0
    return-object p0
.end method

.method public setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/google/gdata/model/Element;->throwExceptionIfLocked()V

    .line 1064
    iget-object v0, p0, Lcom/google/gdata/model/Element;->state:Lcom/google/gdata/model/Element$ElementState;

    iget-object v1, p0, Lcom/google/gdata/model/Element;->key:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, p1}, Lcom/google/gdata/model/Element;->checkValue(Lcom/google/gdata/model/ElementKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/model/Element$ElementState;->access$402(Lcom/google/gdata/model/Element$ElementState;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1447
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    move-result-object v2

    .line 1448
    .local v2, "helper":Lcom/google/gdata/util/common/base/Objects$ToStringHelper;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->getElementId()Lcom/google/gdata/model/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    .line 1449
    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->getAttributeIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1450
    .local v0, "aIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/model/Attribute;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Attribute;

    .line 1452
    .local v1, "att":Lcom/google/gdata/model/Attribute;
    invoke-virtual {v1}, Lcom/google/gdata/model/Attribute;->getAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gdata/model/QName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/gdata/model/Attribute;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    goto :goto_0

    .line 1454
    .end local v1    # "att":Lcom/google/gdata/model/Attribute;
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1455
    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    .line 1457
    :cond_1
    invoke-virtual {v2}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected validate(Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ValidationContext;)V
    .locals 0
    .param p2, "vc"    # Lcom/google/gdata/model/ValidationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/ValidationContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1248
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p1, :cond_0

    .line 1249
    invoke-interface {p1, p2, p0}, Lcom/google/gdata/model/ElementMetadata;->validate(Lcom/google/gdata/model/ValidationContext;Lcom/google/gdata/model/Element;)V

    .line 1251
    :cond_0
    return-void
.end method

.method public visit(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 1
    .param p1, "ev"    # Lcom/google/gdata/model/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementVisitor;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p2, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/gdata/model/Element;->visit(Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    .line 1265
    return-void
.end method
