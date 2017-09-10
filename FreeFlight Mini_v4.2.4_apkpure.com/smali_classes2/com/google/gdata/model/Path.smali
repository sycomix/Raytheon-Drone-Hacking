.class public Lcom/google/gdata/model/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/Path$1;,
        Lcom/google/gdata/model/Path$Builder;
    }
.end annotation


# static fields
.field public static final ROOT:Lcom/google/gdata/model/Path;


# instance fields
.field private final root:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private final selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;"
        }
    .end annotation
.end field

.field private final selectedElement:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private final selectsAttribute:Z

.field private final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/gdata/model/Path;->builder()Lcom/google/gdata/model/Path$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/model/Path$Builder;->build()Lcom/google/gdata/model/Path;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/Path;->ROOT:Lcom/google/gdata/model/Path;

    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/model/Path$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/gdata/model/Path$Builder;

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    invoke-static {p1}, Lcom/google/gdata/model/Path$Builder;->access$200(Lcom/google/gdata/model/Path$Builder;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Path;->root:Lcom/google/gdata/model/ElementMetadata;

    .line 267
    invoke-static {p1}, Lcom/google/gdata/model/Path$Builder;->access$300(Lcom/google/gdata/model/Path$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    .line 268
    invoke-static {p1}, Lcom/google/gdata/model/Path$Builder;->access$400(Lcom/google/gdata/model/Path$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gdata/model/Path;->selectsAttribute:Z

    .line 269
    iget-object v0, p0, Lcom/google/gdata/model/Path;->root:Lcom/google/gdata/model/ElementMetadata;

    if-nez v0, :cond_0

    .line 270
    iput-object v1, p0, Lcom/google/gdata/model/Path;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    .line 271
    iput-object v1, p0, Lcom/google/gdata/model/Path;->selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {p1}, Lcom/google/gdata/model/Path$Builder;->access$500(Lcom/google/gdata/model/Path$Builder;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Path;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    .line 274
    invoke-static {p1}, Lcom/google/gdata/model/Path$Builder;->access$600(Lcom/google/gdata/model/Path$Builder;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/Path;->selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/gdata/model/Path$Builder;Lcom/google/gdata/model/Path$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/model/Path$Builder;
    .param p2, "x1"    # Lcom/google/gdata/model/Path$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Path;-><init>(Lcom/google/gdata/model/Path$Builder;)V

    return-void
.end method

.method private addPathSeparator(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 399
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    return-void
.end method

.method public static builder()Lcom/google/gdata/model/Path$Builder;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/google/gdata/model/Path$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/gdata/model/Path$Builder;-><init>(Lcom/google/gdata/model/Path$1;)V

    return-object v0
.end method

.method public static varargs of([Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)",
            "Lcom/google/gdata/model/Path;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "steps":[Lcom/google/gdata/model/MetadataKey;, "[Lcom/google/gdata/model/MetadataKey<*>;"
    new-instance v1, Lcom/google/gdata/model/Path$Builder;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/google/gdata/model/Path$Builder;-><init>(Lcom/google/gdata/model/Path$1;)V

    .line 224
    .local v1, "builder":Lcom/google/gdata/model/Path$Builder;
    move-object v0, p0

    .local v0, "arr$":[Lcom/google/gdata/model/MetadataKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 225
    .local v4, "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {v1, v4}, Lcom/google/gdata/model/Path$Builder;->addStep(Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path$Builder;

    .line 224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v4    # "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/gdata/model/Path$Builder;->build()Lcom/google/gdata/model/Path;

    move-result-object v5

    return-object v5
.end method

.method public static varargs to(Lcom/google/gdata/model/ElementMetadata;[Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;[",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;)",
            "Lcom/google/gdata/model/Path;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "root":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p1, "keys":[Lcom/google/gdata/model/MetadataKey;, "[Lcom/google/gdata/model/MetadataKey<*>;"
    new-instance v5, Lcom/google/gdata/model/Path$Builder;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/google/gdata/model/Path$Builder;-><init>(Lcom/google/gdata/model/Path$1;)V

    invoke-virtual {v5, p0}, Lcom/google/gdata/model/Path$Builder;->fromRoot(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path$Builder;

    move-result-object v1

    .line 244
    .local v1, "builder":Lcom/google/gdata/model/Path$Builder;
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/gdata/model/MetadataKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 245
    .local v3, "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {v1, v3}, Lcom/google/gdata/model/Path$Builder;->addStep(Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path$Builder;

    .line 244
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "key":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_0
    invoke-virtual {v1}, Lcom/google/gdata/model/Path$Builder;->build()Lcom/google/gdata/model/Path;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 411
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/google/gdata/model/Path;

    if-eq v2, v3, :cond_1

    .line 415
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 414
    check-cast v0, Lcom/google/gdata/model/Path;

    .line 415
    .local v0, "path":Lcom/google/gdata/model/Path;
    iget-object v2, p0, Lcom/google/gdata/model/Path;->root:Lcom/google/gdata/model/ElementMetadata;

    iget-object v3, v0, Lcom/google/gdata/model/Path;->root:Lcom/google/gdata/model/ElementMetadata;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    iget-object v3, v0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getParentKey()Lcom/google/gdata/model/ElementKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    .line 354
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedAttribute()Lcom/google/gdata/model/AttributeMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/gdata/model/Path;->selectedAttribute:Lcom/google/gdata/model/AttributeMetadata;

    return-object v0
.end method

.method public getSelectedAttributeKey()Lcom/google/gdata/model/AttributeKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/google/gdata/model/Path;->selectsAttribute:Z

    const-string v1, "Must select an attribute key."

    invoke-static {v0, v1}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    return-object v0
.end method

.method public getSelectedElement()Lcom/google/gdata/model/ElementMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/gdata/model/Path;->selectedElement:Lcom/google/gdata/model/ElementMetadata;

    return-object v0
.end method

.method public getSelectedElementKey()Lcom/google/gdata/model/ElementKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Must not be an empty path."

    invoke-static {v0, v3}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 341
    iget-boolean v0, p0, Lcom/google/gdata/model/Path;->selectsAttribute:Z

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Must select an element key."

    invoke-static {v1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    return-object v0

    :cond_0
    move v0, v2

    .line 339
    goto :goto_0

    :cond_1
    move v1, v2

    .line 341
    goto :goto_1
.end method

.method public getSteps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/MetadataKey",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 420
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/gdata/model/Path;->root:Lcom/google/gdata/model/ElementMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/gdata/util/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/gdata/model/Path;->root:Lcom/google/gdata/model/ElementMetadata;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectsAttribute()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/gdata/model/Path;->selectsAttribute:Z

    return v0
.end method

.method public selectsElement()Z
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/google/gdata/model/Path;->selectsAttribute:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toAbsolute(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)",
            "Lcom/google/gdata/model/Path;"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "root":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    new-instance v3, Lcom/google/gdata/model/Path$Builder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/gdata/model/Path$Builder;-><init>(Lcom/google/gdata/model/Path$1;)V

    invoke-virtual {v3, p1}, Lcom/google/gdata/model/Path$Builder;->fromRoot(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path$Builder;

    move-result-object v0

    .line 368
    .local v0, "builder":Lcom/google/gdata/model/Path$Builder;
    iget-object v3, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/MetadataKey;

    .line 369
    .local v2, "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-virtual {v0, v2}, Lcom/google/gdata/model/Path$Builder;->addStep(Lcom/google/gdata/model/MetadataKey;)Lcom/google/gdata/model/Path$Builder;

    goto :goto_0

    .line 371
    .end local v2    # "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Path$Builder;->build()Lcom/google/gdata/model/Path;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 380
    iget-object v3, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    const-string v3, "."

    .line 391
    :goto_0
    return-object v3

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/google/gdata/model/Path;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/MetadataKey;

    .line 385
    .local v2, "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    invoke-direct {p0, v0}, Lcom/google/gdata/model/Path;->addPathSeparator(Ljava/lang/StringBuilder;)V

    .line 386
    instance-of v3, v2, Lcom/google/gdata/model/AttributeKey;

    if-eqz v3, :cond_1

    .line 387
    const/16 v3, 0x40

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    :cond_1
    invoke-virtual {v2}, Lcom/google/gdata/model/MetadataKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 391
    .end local v2    # "step":Lcom/google/gdata/model/MetadataKey;, "Lcom/google/gdata/model/MetadataKey<*>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
