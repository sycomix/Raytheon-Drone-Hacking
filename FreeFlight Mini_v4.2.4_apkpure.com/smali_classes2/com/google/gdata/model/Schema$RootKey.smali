.class Lcom/google/gdata/model/Schema$RootKey;
.super Ljava/lang/Object;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RootKey"
.end annotation


# instance fields
.field private final id:Lcom/google/gdata/model/QName;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/QName;)V
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iput-object p1, p0, Lcom/google/gdata/model/Schema$RootKey;->id:Lcom/google/gdata/model/QName;

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    .line 275
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-static {p1}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/model/Schema$RootKey;->id:Lcom/google/gdata/model/QName;

    .line 280
    iput-object p1, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/ElementKey;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/google/gdata/model/Schema$RootKey;->get(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/model/AttributeKey;

    .prologue
    .line 217
    invoke-static {p0}, Lcom/google/gdata/model/Schema$RootKey;->get(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;

    move-result-object v0

    return-object v0
.end method

.method private static get(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/Schema$RootKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)",
            "Lcom/google/gdata/model/Schema$RootKey;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    new-instance v0, Lcom/google/gdata/model/Schema$RootKey;

    invoke-virtual {p0}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-static {v1}, Lcom/google/gdata/model/Schema$RootKey;->getRootId(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/QName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/model/Schema$RootKey;-><init>(Lcom/google/gdata/model/QName;)V

    return-object v0
.end method

.method private static get(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Schema$RootKey;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/Schema$RootKey;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v1

    .line 224
    .local v1, "id":Lcom/google/gdata/model/QName;
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementKey;->getElementType()Ljava/lang/Class;

    move-result-object v0

    .line 225
    .local v0, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    const-class v3, Lcom/google/gdata/model/Element;

    if-eq v0, v3, :cond_1

    .line 226
    invoke-static {v0}, Lcom/google/gdata/model/Schema$RootKey;->getSuper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 227
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    :goto_0
    const-class v3, Lcom/google/gdata/model/Element;

    if-eq v2, v3, :cond_0

    .line 228
    move-object v0, v2

    .line 229
    invoke-static {v0}, Lcom/google/gdata/model/Schema$RootKey;->getSuper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    .line 233
    :cond_0
    new-instance v3, Lcom/google/gdata/model/Schema$RootKey;

    invoke-direct {v3, v0}, Lcom/google/gdata/model/Schema$RootKey;-><init>(Ljava/lang/Class;)V

    .line 236
    .end local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    :goto_1
    return-object v3

    :cond_1
    new-instance v3, Lcom/google/gdata/model/Schema$RootKey;

    invoke-static {v1}, Lcom/google/gdata/model/Schema$RootKey;->getRootId(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/QName;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/gdata/model/Schema$RootKey;-><init>(Lcom/google/gdata/model/QName;)V

    goto :goto_1
.end method

.method private static getRootId(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/QName;
    .locals 3
    .param p0, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/google/gdata/model/QName;

    invoke-virtual {p0}, Lcom/google/gdata/model/QName;->getNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v1

    const-string v2, "*"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    move-object p0, v0

    .line 256
    .end local p0    # "id":Lcom/google/gdata/model/QName;
    :cond_0
    return-object p0
.end method

.method private static getSuper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;)",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/model/Element;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/gdata/model/Element;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    if-ne p1, p0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 288
    :cond_1
    instance-of v3, p1, Lcom/google/gdata/model/Schema$RootKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 289
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 291
    check-cast v0, Lcom/google/gdata/model/Schema$RootKey;

    .line 292
    .local v0, "other":Lcom/google/gdata/model/Schema$RootKey;
    iget-object v3, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    if-eqz v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 295
    :cond_3
    iget-object v1, p0, Lcom/google/gdata/model/Schema$RootKey;->id:Lcom/google/gdata/model/QName;

    iget-object v2, v0, Lcom/google/gdata/model/Schema$RootKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 303
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/Schema$RootKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0}, Lcom/google/gdata/model/QName;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Root ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/Schema$RootKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Root ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/Schema$RootKey;->type:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
