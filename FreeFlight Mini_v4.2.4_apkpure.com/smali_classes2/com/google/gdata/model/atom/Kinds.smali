.class Lcom/google/gdata/model/atom/Kinds;
.super Ljava/lang/Object;
.source "Kinds.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getElementKind(Lcom/google/gdata/model/Element;)Ljava/lang/String;
    .locals 5
    .param p0, "source"    # Lcom/google/gdata/model/Element;

    .prologue
    .line 40
    sget-object v3, Lcom/google/gdata/model/gd/GdAttributes;->KIND:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v3}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, "term":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 49
    .end local v2    # "term":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 44
    .restart local v2    # "term":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/google/gdata/model/atom/Category;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v3}, Lcom/google/gdata/model/Element;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Category;

    .line 45
    .local v0, "category":Lcom/google/gdata/model/atom/Category;
    const-string v3, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->getTerm()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    .end local v0    # "category":Lcom/google/gdata/model/atom/Category;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
