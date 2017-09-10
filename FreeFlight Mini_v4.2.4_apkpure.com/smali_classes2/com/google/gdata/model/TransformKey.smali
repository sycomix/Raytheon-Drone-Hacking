.class final Lcom/google/gdata/model/TransformKey;
.super Ljava/lang/Object;
.source "TransformKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/gdata/model/TransformKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Lcom/google/gdata/model/MetadataContext;

.field private final key:Lcom/google/gdata/model/MetadataKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)V
    .locals 0
    .param p3, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p2, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    .line 96
    iput-object p2, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    .line 97
    iput-object p3, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    .line 98
    return-void
.end method

.method static compare(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "a":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    .local p1, "b":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    if-ne p0, p1, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 216
    :cond_0
    if-nez p0, :cond_1

    .line 217
    const/4 v0, -0x1

    goto :goto_0

    .line 219
    :cond_1
    if-nez p1, :cond_2

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataKey;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method static forContext(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;
    .locals 1
    .param p1, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/TransformKey;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    return-object v0
.end method

.method static forKey(Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/TransformKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)",
            "Lcom/google/gdata/model/TransformKey;"
        }
    .end annotation

    .prologue
    .local p0, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x0

    .line 52
    invoke-static {v0, p0, v0}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    return-object v0
.end method

.method static forParent(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/TransformKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)",
            "Lcom/google/gdata/model/TransformKey;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/gdata/model/TransformKey;->forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;

    move-result-object v0

    return-object v0
.end method

.method static forTransform(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/TransformKey;
    .locals 1
    .param p2, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/TransformKey;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p1, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Lcom/google/gdata/model/TransformKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/model/TransformKey;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)V

    return-object v0
.end method


# virtual methods
.method bind(Lcom/google/gdata/model/TransformKey;)Lcom/google/gdata/model/TransformKey;
    .locals 4
    .param p1, "other"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 117
    if-nez p1, :cond_1

    .line 132
    .end local p0    # "this":Lcom/google/gdata/model/TransformKey;
    :cond_0
    :goto_0
    return-object p0

    .line 121
    .restart local p0    # "this":Lcom/google/gdata/model/TransformKey;
    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/model/TransformKey;->getParent()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    .line 122
    .local v2, "otherParent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/TransformKey;->getKey()Lcom/google/gdata/model/MetadataKey;

    move-result-object v1

    .line 123
    .local v1, "otherKey":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {p1}, Lcom/google/gdata/model/TransformKey;->getContext()Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    .line 125
    .local v0, "otherContext":Lcom/google/gdata/model/MetadataContext;
    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    if-ne v1, v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v0, v3}, Lcom/google/gdata/model/MetadataContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-eqz v3, :cond_0

    .line 132
    :cond_3
    new-instance v3, Lcom/google/gdata/model/TransformKey;

    if-eqz v2, :cond_4

    .end local v2    # "otherParent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :goto_1
    if-eqz v1, :cond_5

    .end local v1    # "otherKey":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :goto_2
    if-eqz v0, :cond_6

    .end local v0    # "otherContext":Lcom/google/gdata/model/MetadataContext;
    :goto_3
    invoke-direct {v3, v2, v1, v0}, Lcom/google/gdata/model/TransformKey;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)V

    move-object p0, v3

    goto :goto_0

    .restart local v0    # "otherContext":Lcom/google/gdata/model/MetadataContext;
    .restart local v1    # "otherKey":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    .restart local v2    # "otherParent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_4
    iget-object v2, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    goto :goto_1

    .end local v2    # "otherParent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_5
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    goto :goto_2

    .end local v1    # "otherKey":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_6
    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    goto :goto_3
.end method

.method public compareTo(Lcom/google/gdata/model/TransformKey;)I
    .locals 3
    .param p1, "other"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 182
    if-ne p0, p1, :cond_1

    .line 183
    const/4 v0, 0x0

    .line 205
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    if-nez p1, :cond_2

    .line 186
    const/4 v0, 0x1

    goto :goto_0

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    iget-object v2, p1, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    invoke-static {v1, v2}, Lcom/google/gdata/model/TransformKey;->compare(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)I

    move-result v0

    .line 189
    .local v0, "compare":I
    if-nez v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    iget-object v2, p1, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    invoke-static {v1, v2}, Lcom/google/gdata/model/TransformKey;->compare(Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataKey;)I

    move-result v0

    .line 193
    if-nez v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-nez v1, :cond_3

    .line 197
    iget-object v1, p1, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-eqz v1, :cond_0

    .line 198
    const/4 v0, -0x1

    goto :goto_0

    .line 200
    :cond_3
    iget-object v1, p1, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-nez v1, :cond_4

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_4
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    iget-object v2, p1, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v1, v2}, Lcom/google/gdata/model/MetadataContext;->compareTo(Lcom/google/gdata/model/MetadataContext;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Lcom/google/gdata/model/TransformKey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/TransformKey;->compareTo(Lcom/google/gdata/model/TransformKey;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 244
    :cond_1
    instance-of v3, p1, Lcom/google/gdata/model/TransformKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 245
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 248
    check-cast v0, Lcom/google/gdata/model/TransformKey;

    .line 249
    .local v0, "other":Lcom/google/gdata/model/TransformKey;
    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    if-nez v3, :cond_3

    .line 250
    iget-object v3, v0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    if-eqz v3, :cond_4

    move v1, v2

    .line 251
    goto :goto_0

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    iget-object v4, v0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v3, v4}, Lcom/google/gdata/model/ElementKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 254
    goto :goto_0

    .line 256
    :cond_4
    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    iget-object v4, v0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 257
    goto :goto_0

    .line 259
    :cond_5
    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-nez v3, :cond_6

    .line 260
    iget-object v3, v0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-eqz v3, :cond_0

    move v1, v2

    .line 261
    goto :goto_0

    .line 263
    :cond_6
    iget-object v3, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    iget-object v4, v0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v3, v4}, Lcom/google/gdata/model/MetadataContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 264
    goto :goto_0
.end method

.method getContext()Lcom/google/gdata/model/MetadataContext;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    return-object v0
.end method

.method getKey()Lcom/google/gdata/model/MetadataKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    return-object v0
.end method

.method getParent()Lcom/google/gdata/model/ElementKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 228
    .local v0, "hash":I
    mul-int/lit8 v0, v0, 0x11

    .line 229
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v1}, Lcom/google/gdata/model/ElementKey;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    :cond_0
    mul-int/lit8 v0, v0, 0x11

    .line 233
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v1}, Lcom/google/gdata/model/MetadataContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_1
    return v0
.end method

.method matches(Lcom/google/gdata/model/TransformKey;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/gdata/model/TransformKey;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    iget-object v1, p1, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/ElementKey;->matches(Lcom/google/gdata/model/MetadataKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    iget-object v1, p1, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/MetadataKey;->matches(Lcom/google/gdata/model/MetadataKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    iget-object v1, p1, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/MetadataContext;->matches(Lcom/google/gdata/model/MetadataContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{TransformKey("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    if-nez v1, :cond_1

    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->context:Lcom/google/gdata/model/MetadataContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->parent:Lcom/google/gdata/model/ElementKey;

    goto :goto_0

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/TransformKey;->key:Lcom/google/gdata/model/MetadataKey;

    goto :goto_1
.end method
