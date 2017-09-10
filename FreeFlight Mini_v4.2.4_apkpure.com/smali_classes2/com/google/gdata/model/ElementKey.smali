.class public final Lcom/google/gdata/model/ElementKey;
.super Lcom/google/gdata/model/MetadataKey;
.source "ElementKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Lcom/google/gdata/model/Element;",
        ">",
        "Lcom/google/gdata/model/MetadataKey",
        "<TD;>;"
    }
.end annotation


# instance fields
.field final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TD;>;",
            "Ljava/lang/Class",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    .local p2, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<+TD;>;"
    .local p3, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/MetadataKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;)V

    .line 87
    const-string v0, "elementType"

    invoke-static {p3, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-class v0, Lcom/google/gdata/model/Element;

    if-ne v0, p3, :cond_0

    .line 89
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    iput-object p3, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    .line 92
    return-void
.end method

.method public static of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;
    .locals 2
    .param p0, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const-class v0, Ljava/lang/String;

    const-class v1, Lcom/google/gdata/model/Element;

    invoke-static {p0, v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p0, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TV;>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    const-class v0, Ljava/lang/Void;

    invoke-static {p0, v0, p1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p0, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Class",
            "<+TT;>;",
            "Ljava/lang/Class",
            "<+TV;>;)",
            "Lcom/google/gdata/model/ElementKey",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "datatype":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    .local p2, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+TV;>;"
    new-instance v0, Lcom/google/gdata/model/ElementKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/model/ElementKey;-><init>(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)V

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
    .line 127
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    .local p1, "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    if-ne p1, p0, :cond_1

    .line 128
    const/4 v0, 0x0

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    instance-of v1, p1, Lcom/google/gdata/model/ElementKey;

    if-nez v1, :cond_2

    .line 133
    const/4 v0, 0x1

    goto :goto_0

    .line 136
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataKey;->id:Lcom/google/gdata/model/QName;

    invoke-static {v1, v2}, Lcom/google/gdata/model/ElementKey;->compareQName(Lcom/google/gdata/model/QName;Lcom/google/gdata/model/QName;)I

    move-result v0

    .line 137
    .local v0, "compare":I
    if-nez v0, :cond_0

    .line 141
    iget-object v2, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lcom/google/gdata/model/ElementKey;

    iget-object v1, v1, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-static {v2, v1}, Lcom/google/gdata/model/ElementKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    .line 142
    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataKey;->datatype:Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/google/gdata/model/ElementKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    check-cast p1, Lcom/google/gdata/model/MetadataKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementKey;->compareTo(Lcom/google/gdata/model/MetadataKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 178
    :cond_0
    :goto_0
    return v2

    .line 165
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/google/gdata/model/ElementKey;

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 168
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 170
    .local v0, "o":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v3, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    if-nez v3, :cond_3

    .line 171
    iget-object v3, v0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    if-nez v3, :cond_0

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    iget-object v4, v0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 174
    :cond_3
    iget-object v3, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    iget-object v4, v0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v3, v4}, Lcom/google/gdata/model/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 178
    goto :goto_1
.end method

.method public getElementType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 151
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 152
    .local v0, "hashCode":I
    mul-int/lit8 v0, v0, 0x11

    .line 153
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v1}, Lcom/google/gdata/model/QName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_0
    mul-int/lit8 v0, v0, 0x11

    .line 157
    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
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
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    .local p1, "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 120
    .end local p1    # "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_0
    :goto_0
    return v0

    .line 112
    .restart local p1    # "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_1
    instance-of v1, p1, Lcom/google/gdata/model/ElementKey;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/ElementKey;->matchIdAndDatatype(Lcom/google/gdata/model/MetadataKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    check-cast p1, Lcom/google/gdata/model/ElementKey;

    .end local p1    # "other":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    iget-object v1, p1, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    .local p0, "this":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<TD;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ElementKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->id:Lcom/google/gdata/model/QName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", D:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->datatype:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", E:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/model/ElementKey;->elementType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
