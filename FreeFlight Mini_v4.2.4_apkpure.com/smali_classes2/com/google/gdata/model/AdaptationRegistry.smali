.class Lcom/google/gdata/model/AdaptationRegistry;
.super Ljava/lang/Object;
.source "AdaptationRegistry.java"


# instance fields
.field private final adaptations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "adaptations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gdata/model/ElementKey<**>;>;"
    .local p2, "attributes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/AttributeKey<*>;>;"
    .local p3, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/ElementKey<**>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/gdata/model/AdaptationRegistry;->adaptations:Ljava/util/Map;

    .line 68
    iput-object p2, p0, Lcom/google/gdata/model/AdaptationRegistry;->attributes:Ljava/util/Map;

    .line 69
    iput-object p3, p0, Lcom/google/gdata/model/AdaptationRegistry;->elements:Ljava/util/Map;

    .line 70
    return-void
.end method


# virtual methods
.method findAttribute(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/model/AdaptationRegistry;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/AttributeKey;

    return-object v0
.end method

.method findElement(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/QName;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/model/AdaptationRegistry;->elements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    return-object v0
.end method

.method getAdaptation(Ljava/lang/String;)Lcom/google/gdata/model/ElementKey;
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/model/AdaptationRegistry;->adaptations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementKey;

    return-object v0
.end method
