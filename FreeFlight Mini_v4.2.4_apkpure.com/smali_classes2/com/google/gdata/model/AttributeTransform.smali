.class final Lcom/google/gdata/model/AttributeTransform;
.super Lcom/google/gdata/model/Transform;
.source "AttributeTransform.java"


# static fields
.field static final EMPTY:Lcom/google/gdata/model/AttributeTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/gdata/model/AttributeTransform;

    invoke-direct {v0}, Lcom/google/gdata/model/AttributeTransform;-><init>()V

    sput-object v0, Lcom/google/gdata/model/AttributeTransform;->EMPTY:Lcom/google/gdata/model/AttributeTransform;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/gdata/model/Transform;-><init>()V

    .line 86
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/AttributeCreatorImpl;)V
    .locals 0
    .param p1, "creator"    # Lcom/google/gdata/model/AttributeCreatorImpl;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Transform;-><init>(Lcom/google/gdata/model/MetadataCreatorImpl;)V

    .line 94
    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/Transform;)V
    .locals 0
    .param p1, "transform"    # Lcom/google/gdata/model/Transform;
    .param p2, "source"    # Lcom/google/gdata/model/Transform;

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Transform;-><init>(Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/Transform;)V

    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/model/AttributeTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/gdata/model/AttributeTransform;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Transform;-><init>(Ljava/lang/Iterable;)V

    .line 102
    return-void
.end method

.method static create(Lcom/google/gdata/model/AttributeCreatorImpl;)Lcom/google/gdata/model/AttributeTransform;
    .locals 2
    .param p0, "creator"    # Lcom/google/gdata/model/AttributeCreatorImpl;

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/model/AttributeTransform;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/AttributeTransform;-><init>(Lcom/google/gdata/model/AttributeCreatorImpl;)V

    .line 41
    .local v0, "transform":Lcom/google/gdata/model/AttributeTransform;
    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeTransform;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v0, Lcom/google/gdata/model/AttributeTransform;->EMPTY:Lcom/google/gdata/model/AttributeTransform;

    .line 44
    .end local v0    # "transform":Lcom/google/gdata/model/AttributeTransform;
    :cond_0
    return-object v0
.end method

.method static create(Ljava/lang/Iterable;)Lcom/google/gdata/model/AttributeTransform;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/gdata/model/AttributeTransform;",
            ">;)",
            "Lcom/google/gdata/model/AttributeTransform;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/google/gdata/model/AttributeTransform;>;"
    new-instance v0, Lcom/google/gdata/model/AttributeTransform;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/AttributeTransform;-><init>(Ljava/lang/Iterable;)V

    .line 55
    .local v0, "composite":Lcom/google/gdata/model/AttributeTransform;
    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeTransform;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v0, Lcom/google/gdata/model/AttributeTransform;->EMPTY:Lcom/google/gdata/model/AttributeTransform;

    .line 58
    .end local v0    # "composite":Lcom/google/gdata/model/AttributeTransform;
    :cond_0
    return-object v0
.end method

.method static mergeSource(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/Transform;
    .locals 4
    .param p0, "schema"    # Lcom/google/gdata/model/Schema;
    .param p1, "transform"    # Lcom/google/gdata/model/Transform;
    .param p2, "context"    # Lcom/google/gdata/model/MetadataContext;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/google/gdata/model/Transform;->getSource()Lcom/google/gdata/model/TransformKey;

    move-result-object v1

    .line 70
    .local v1, "sourceKey":Lcom/google/gdata/model/TransformKey;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getParent()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/google/gdata/model/Schema;->getTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/Transform;

    move-result-object v0

    .line 73
    .local v0, "source":Lcom/google/gdata/model/Transform;
    if-eqz v0, :cond_0

    .line 74
    new-instance v2, Lcom/google/gdata/model/AttributeTransform;

    invoke-direct {v2, p1, v0}, Lcom/google/gdata/model/AttributeTransform;-><init>(Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/Transform;)V

    move-object p1, v2

    .line 77
    .end local v0    # "source":Lcom/google/gdata/model/Transform;
    .end local p1    # "transform":Lcom/google/gdata/model/Transform;
    :cond_0
    return-object p1
.end method


# virtual methods
.method toMetadata(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 6
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .param p4, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p3, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    new-instance v0, Lcom/google/gdata/model/AttributeMetadataImpl;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/model/AttributeMetadataImpl;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/AttributeTransform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)V

    return-object v0
.end method
