.class public final Lcom/google/gdata/model/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field private final key:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation
.end field

.field private volatile locked:Z

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    iput-object v0, p0, Lcom/google/gdata/model/Attribute;->key:Lcom/google/gdata/model/AttributeKey;

    .line 54
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Attribute;->setValue(Ljava/lang/Object;)Lcom/google/gdata/model/Attribute;

    .line 55
    return-void
.end method


# virtual methods
.method public getAttributeKey()Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/gdata/model/Attribute;->key:Lcom/google/gdata/model/AttributeKey;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/gdata/model/Attribute;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/gdata/model/Attribute;->locked:Z

    return v0
.end method

.method public lock()Lcom/google/gdata/model/Attribute;
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/model/Attribute;->locked:Z

    .line 71
    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/google/gdata/model/Attribute;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget-boolean v0, p0, Lcom/google/gdata/model/Attribute;->locked:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/gdata/model/Attribute;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v4}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attribute is read only"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 100
    const-string v0, "Attribute value cannot be null."

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/gdata/model/Attribute;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/AttributeKey;->getDatatype()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v3, "Cannot assign a value of type %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iput-object p1, p0, Lcom/google/gdata/model/Attribute;->value:Ljava/lang/Object;

    .line 105
    return-object p0

    :cond_0
    move v0, v2

    .line 99
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/gdata/util/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/model/Attribute;->key:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v2}, Lcom/google/gdata/model/AttributeKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/model/Attribute;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/gdata/util/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
