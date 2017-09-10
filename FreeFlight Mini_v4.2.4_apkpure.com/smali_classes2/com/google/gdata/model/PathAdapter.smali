.class Lcom/google/gdata/model/PathAdapter;
.super Ljava/lang/Object;
.source "PathAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/PathAdapter$ValueAdapter;,
        Lcom/google/gdata/model/PathAdapter$ElementAdapter;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/model/ElementMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/gdata/model/ElementMetadata;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/gdata/model/PathAdapter;->checkNotMultiple(Lcom/google/gdata/model/ElementMetadata;)V

    return-void
.end method

.method private static checkNotMultiple(Lcom/google/gdata/model/ElementMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "meta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-eq v0, v1, :cond_0

    .line 285
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Metadata for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/gdata/model/ElementMetadata;->getKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " represents a multiple-cardinality element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " The path cannot contain more than one multiple-cardinality"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " element."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    return-void
.end method

.method static createFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 5
    .param p0, "path"    # Lcom/google/gdata/model/Path;
    .param p1, "rootElement"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/google/gdata/model/PathAdapter;->createParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v3

    .line 244
    .local v3, "parent":Lcom/google/gdata/model/Element;
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v3

    .line 257
    :cond_1
    :goto_0
    return-object v0

    .line 247
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    .line 248
    .local v1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v3, v1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 249
    .local v0, "child":Lcom/google/gdata/model/Element;
    if-nez v0, :cond_1

    .line 251
    :try_start_0
    invoke-static {v1}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 252
    invoke-virtual {v3, v0}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v4, Lcom/google/gdata/util/ParseException;

    invoke-direct {v4, v2}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method static createParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 5
    .param p0, "path"    # Lcom/google/gdata/model/Path;
    .param p1, "rootElement"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v4, "path"

    invoke-static {p0, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v4, "rootElement"

    invoke-static {p1, v4}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v3

    .line 155
    .local v3, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/MetadataKey<*>;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    const/4 v2, 0x0

    .line 163
    :cond_0
    return-object v2

    .line 158
    :cond_1
    move-object v2, p1

    .line 159
    .local v2, "parent":Lcom/google/gdata/model/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 160
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 161
    .local v0, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-static {v2, v0}, Lcom/google/gdata/model/PathAdapter;->getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static createParentElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;I)Ljava/util/Collection;
    .locals 16
    .param p0, "path"    # Lcom/google/gdata/model/Path;
    .param p1, "rootElement"    # Lcom/google/gdata/model/Element;
    .param p3, "elementCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Path;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "rootMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const-string v14, "path"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v14, "rootElement"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v13

    .line 178
    .local v13, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/MetadataKey<*>;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 179
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    .line 232
    :cond_0
    :goto_0
    return-object v12

    .line 181
    :cond_1
    move-object/from16 v10, p1

    .line 182
    .local v10, "parent":Lcom/google/gdata/model/Element;
    const/4 v12, 0x0

    .line 183
    .local v12, "parents":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    move-object/from16 v11, p2

    .line 184
    .local v11, "parentMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v6, v14, :cond_8

    .line 185
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/ElementKey;

    .line 186
    .local v2, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    if-nez v11, :cond_2

    const/4 v3, 0x0

    .line 191
    .local v3, "childMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    :goto_2
    if-eqz v12, :cond_4

    .line 192
    invoke-static {v3}, Lcom/google/gdata/model/PathAdapter;->checkNotMultiple(Lcom/google/gdata/model/ElementMetadata;)V

    .line 194
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 195
    .local v4, "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gdata/model/Element;

    .line 196
    .local v9, "p":Lcom/google/gdata/model/Element;
    invoke-static {v9, v2}, Lcom/google/gdata/model/PathAdapter;->getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 186
    .end local v3    # "childMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "p":Lcom/google/gdata/model/Element;
    :cond_2
    invoke-interface {v11, v2}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v3

    goto :goto_2

    .line 198
    .restart local v3    # "childMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .restart local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object v12, v4

    .line 199
    move-object v11, v3

    .line 184
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 205
    :cond_4
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/google/gdata/model/ElementMetadata;->getCardinality()Lcom/google/gdata/model/ElementMetadata$Cardinality;

    move-result-object v14

    sget-object v15, Lcom/google/gdata/model/ElementMetadata$Cardinality;->SINGLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    if-ne v14, v15, :cond_6

    .line 207
    :cond_5
    invoke-static {v10, v2}, Lcom/google/gdata/model/PathAdapter;->getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 208
    .local v1, "child":Lcom/google/gdata/model/Element;
    move-object v10, v1

    .line 209
    move-object v11, v3

    .line 210
    goto :goto_4

    .line 215
    .end local v1    # "child":Lcom/google/gdata/model/Element;
    :cond_6
    invoke-static/range {p3 .. p3}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 216
    .restart local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_5
    move/from16 v0, p3

    if-ge v8, v0, :cond_7

    .line 218
    :try_start_0
    invoke-static {v2}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 219
    .restart local v1    # "child":Lcom/google/gdata/model/Element;
    invoke-virtual {v10, v1}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 220
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 221
    .end local v1    # "child":Lcom/google/gdata/model/Element;
    :catch_0
    move-exception v5

    .line 222
    .local v5, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v14, Lcom/google/gdata/util/ParseException;

    invoke-direct {v14, v5}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 225
    .end local v5    # "e":Lcom/google/gdata/wireformats/ContentCreationException;
    :cond_7
    move-object v12, v4

    .line 226
    move-object v11, v3

    goto :goto_4

    .line 229
    .end local v2    # "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v3    # "childMetadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v4    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    .end local v8    # "j":I
    :cond_8
    if-nez v12, :cond_0

    .line 232
    invoke-static {v10}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v12

    goto :goto_0
.end method

.method static elementAdapter(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/PathAdapter$ElementAdapter;
    .locals 1
    .param p0, "path"    # Lcom/google/gdata/model/Path;

    .prologue
    .line 54
    new-instance v0, Lcom/google/gdata/model/PathAdapter$ElementAdapter;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/PathAdapter$ElementAdapter;-><init>(Lcom/google/gdata/model/Path;)V

    return-object v0
.end method

.method static generateAttributeValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/AttributeMetadata;)Ljava/lang/Object;
    .locals 1
    .param p0, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p2, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .local p3, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 301
    invoke-interface {p3, p0, p1}, Lcom/google/gdata/model/AttributeMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static generateTextValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 1
    .param p0, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p1, :cond_0

    .line 328
    invoke-interface {p1, p0, p1}, Lcom/google/gdata/model/ElementMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/Element;->getTextValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static getFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 2
    .param p0, "path"    # Lcom/google/gdata/model/Path;
    .param p1, "rootElement"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 103
    invoke-static {p0, p1}, Lcom/google/gdata/model/PathAdapter;->getParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 104
    .local v0, "parent":Lcom/google/gdata/model/Element;
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 107
    .end local v0    # "parent":Lcom/google/gdata/model/Element;
    :cond_0
    :goto_0
    return-object v0

    .restart local v0    # "parent":Lcom/google/gdata/model/Element;
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSelectedElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    goto :goto_0
.end method

.method static getFinalElements(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Ljava/util/Collection;
    .locals 12
    .param p0, "path"    # Lcom/google/gdata/model/Path;
    .param p1, "rootElement"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Path;",
            "Lcom/google/gdata/model/Element;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 117
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 119
    .local v6, "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/model/MetadataKey;

    .line 120
    .local v8, "part":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    instance-of v9, v8, Lcom/google/gdata/model/AttributeKey;

    if-eqz v9, :cond_2

    .end local v8    # "part":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_1
    move-object v7, v6

    .line 143
    .end local v6    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    .local v7, "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    :goto_0
    return-object v7

    .end local v7    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    .restart local v6    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    .restart local v8    # "part":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_2
    move-object v0, v8

    .line 123
    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 127
    .local v0, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 128
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 129
    .local v4, "next":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 130
    .local v1, "e":Lcom/google/gdata/model/Element;
    invoke-virtual {v1, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 132
    .end local v1    # "e":Lcom/google/gdata/model/Element;
    :cond_3
    move-object v6, v4

    .line 139
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "next":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/Element;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v7, v6

    .line 140
    .end local v6    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    .restart local v7    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    goto :goto_0

    .line 136
    .end local v7    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    .restart local v6    # "parents":Ljava/util/List;, "Ljava/util/List<+Lcom/google/gdata/model/Element;>;"
    :cond_4
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/model/Element;

    .line 137
    .local v5, "parent":Lcom/google/gdata/model/Element;
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gdata/model/Element;

    invoke-virtual {v9, v0}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v6

    goto :goto_2
.end method

.method private static getOrCreateChild(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;
    .locals 4
    .param p0, "parent"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)",
            "Lcom/google/gdata/model/Element;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 266
    .local v0, "child":Lcom/google/gdata/model/Element;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 272
    .end local v0    # "child":Lcom/google/gdata/model/Element;
    .local v1, "child":Lcom/google/gdata/model/Element;
    :goto_0
    return-object v1

    .line 270
    .end local v1    # "child":Lcom/google/gdata/model/Element;
    .restart local v0    # "child":Lcom/google/gdata/model/Element;
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/gdata/model/Element;->createElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/google/gdata/model/Element;->addElement(Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    :try_end_0
    .catch Lcom/google/gdata/wireformats/ContentCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 272
    .end local v0    # "child":Lcom/google/gdata/model/Element;
    .restart local v1    # "child":Lcom/google/gdata/model/Element;
    goto :goto_0

    .line 273
    .end local v1    # "child":Lcom/google/gdata/model/Element;
    .restart local v0    # "child":Lcom/google/gdata/model/Element;
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Lcom/google/gdata/wireformats/ContentCreationException;
    new-instance v3, Lcom/google/gdata/util/ParseException;

    invoke-direct {v3, v2}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getParentElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;
    .locals 6
    .param p0, "path"    # Lcom/google/gdata/model/Path;
    .param p1, "rootElement"    # Lcom/google/gdata/model/Element;

    .prologue
    const/4 v4, 0x0

    .line 74
    const-string v5, "path"

    invoke-static {p0, v5}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v5, "rootElement"

    invoke-static {p1, v5}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/google/gdata/model/Path;->getSteps()Ljava/util/List;

    move-result-object v3

    .line 77
    .local v3, "steps":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/MetadataKey<*>;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 88
    :cond_0
    :goto_0
    return-object v2

    .line 80
    :cond_1
    move-object v2, p1

    .line 81
    .local v2, "parent":Lcom/google/gdata/model/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    .line 82
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 83
    .local v0, "childKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    invoke-virtual {v2, v0}, Lcom/google/gdata/model/Element;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 84
    if-nez v2, :cond_2

    move-object v2, v4

    .line 85
    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static parseAttributeValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/AttributeMetadata;Ljava/lang/Object;)V
    .locals 0
    .param p0, "element"    # Lcom/google/gdata/model/Element;
    .param p4, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p2, "attKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .local p3, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    if-nez p3, :cond_0

    .line 314
    invoke-virtual {p0, p2, p4}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-interface {p3, p0, p1, p4}, Lcom/google/gdata/model/AttributeMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static parseTextValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 0
    .param p0, "element"    # Lcom/google/gdata/model/Element;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    if-eqz p1, :cond_0

    .line 340
    invoke-interface {p1, p0, p1, p2}, Lcom/google/gdata/model/ElementMetadata;->parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    goto :goto_0
.end method

.method static valueAdapter(Lcom/google/gdata/model/Path;)Lcom/google/gdata/model/PathAdapter$ValueAdapter;
    .locals 1
    .param p0, "path"    # Lcom/google/gdata/model/Path;

    .prologue
    .line 61
    new-instance v0, Lcom/google/gdata/model/PathAdapter$ValueAdapter;

    invoke-direct {v0, p0}, Lcom/google/gdata/model/PathAdapter$ValueAdapter;-><init>(Lcom/google/gdata/model/Path;)V

    return-object v0
.end method
