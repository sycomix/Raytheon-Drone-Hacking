.class public final Lcom/google/gdata/model/AttributeKey;
.super Lcom/google/gdata/model/MetadataKey;
.source "AttributeKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/model/MetadataKey",
        "<TD;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TD;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    .local p2, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<+TD;>;"
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/QName;

    invoke-direct {p0, v0, p2}, Lcom/google/gdata/model/MetadataKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V

    .line 64
    return-void
.end method

.method public static of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .param p0, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const-class v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .param p0, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TT;>;)",
            "Lcom/google/gdata/model/AttributeKey",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lcom/google/gdata/model/AttributeKey;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/model/AttributeKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/gdata/model/MetadataKey;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    .local p1, "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    if-ne p1, p0, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    instance-of v1, p1, Lcom/google/gdata/model/AttributeKey;

    if-nez v1, :cond_2

    .line 94
    const/4 v0, -0x1

    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    invoke-static {v1, v2}, Lcom/google/gdata/model/AttributeKey;->compareQName(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/QName;)I

    move-result v0

    .line 98
    .local v0, "compare":I
    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/google/gdata/model/AttributeKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 38
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    check-cast p1, Lcom/google/gdata/model/MetadataKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeKey;->compareTo(Lcom/google/gdata/model/MetadataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p1, p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/gdata/model/AttributeKey;

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 120
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 122
    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    .line 123
    .local v0, "o":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    iget-object v3, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    iget-object v4, v0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v3, v4}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 106
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 107
    .local v0, "hashCode":I
    mul-int/lit8 v0, v0, 0x11

    .line 108
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_0
    return v0
.end method

.method public matches(Lcom/google/gdata/model/MetadataKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    .local p1, "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    instance-of v1, p1, Lcom/google/gdata/model/AttributeKey;

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/AttributeKey;->matchIdAndDatatype(Lcom/google/gdata/model/MetadataKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{AttributeKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/AttributeKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
