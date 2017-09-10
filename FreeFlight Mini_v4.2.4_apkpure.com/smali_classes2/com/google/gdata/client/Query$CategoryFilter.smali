.class public Lcom/google/gdata/client/Query$CategoryFilter;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryFilter"
.end annotation


# instance fields
.field private final categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ICategory;",
            ">;"
        }
    .end annotation
.end field

.field private final excludeCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ICategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->excludeCategories:Ljava/util/List;

    .line 267
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/ICategory;)V
    .locals 1
    .param p1, "category"    # Lcom/google/gdata/data/ICategory;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/gdata/client/Query$CategoryFilter;-><init>()V

    .line 297
    iget-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ICategory;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ICategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "included":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/ICategory;>;"
    .local p2, "excluded":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/ICategory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    if-eqz p1, :cond_0

    .line 278
    iput-object p1, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    .line 282
    :goto_0
    if-eqz p2, :cond_1

    .line 283
    iput-object p2, p0, Lcom/google/gdata/client/Query$CategoryFilter;->excludeCategories:Ljava/util/List;

    .line 287
    :goto_1
    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    goto :goto_0

    .line 285
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->excludeCategories:Ljava/util/List;

    goto :goto_1
.end method

.method private getQueryString(Lcom/google/gdata/data/ICategory;)Ljava/lang/String;
    .locals 3
    .param p1, "category"    # Lcom/google/gdata/data/ICategory;

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lcom/google/gdata/data/ICategory;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 329
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    invoke-interface {p1}, Lcom/google/gdata/data/ICategory;->getTerm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addCategory(Lcom/google/gdata/data/ICategory;)V
    .locals 1
    .param p1, "category"    # Lcom/google/gdata/data/ICategory;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public addExcludeCategory(Lcom/google/gdata/data/ICategory;)V
    .locals 1
    .param p1, "category"    # Lcom/google/gdata/data/ICategory;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->excludeCategories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ICategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getExcludeCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/ICategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/gdata/client/Query$CategoryFilter;->excludeCategories:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 346
    .local v2, "isFirst":Z
    iget-object v4, p0, Lcom/google/gdata/client/Query$CategoryFilter;->categories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ICategory;

    .line 348
    .local v0, "category":Lcom/google/gdata/data/ICategory;
    if-eqz v2, :cond_0

    .line 349
    const/4 v2, 0x0

    .line 353
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/gdata/client/Query$CategoryFilter;->getQueryString(Lcom/google/gdata/data/ICategory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 351
    :cond_0
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 355
    .end local v0    # "category":Lcom/google/gdata/data/ICategory;
    :cond_1
    iget-object v4, p0, Lcom/google/gdata/client/Query$CategoryFilter;->excludeCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ICategory;

    .line 357
    .restart local v0    # "category":Lcom/google/gdata/data/ICategory;
    if-eqz v2, :cond_2

    .line 358
    const/4 v2, 0x0

    .line 362
    :goto_3
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-direct {p0, v0}, Lcom/google/gdata/client/Query$CategoryFilter;->getQueryString(Lcom/google/gdata/data/ICategory;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 360
    :cond_2
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 365
    .end local v0    # "category":Lcom/google/gdata/data/ICategory;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
