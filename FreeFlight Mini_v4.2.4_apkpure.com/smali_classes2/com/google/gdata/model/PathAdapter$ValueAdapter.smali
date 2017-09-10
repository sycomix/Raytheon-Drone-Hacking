.class Lcom/google/gdata/model/PathAdapter$ValueAdapter;
.super Ljava/lang/Object;
.source "PathAdapter.java"

# interfaces
.implements Lcom/google/gdata/model/Metadata$VirtualValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/PathAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueAdapter"
.end annotation


# instance fields
.field private final path:Lcom/google/gdata/model/Path;


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Path;)V
    .locals 0
    .param p1, "path"    # Lcom/google/gdata/model/Path;

    .prologue
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p1, p0, Lcom/google/gdata/model/PathAdapter$ValueAdapter;->path:Lcom/google/gdata/model/Path;

    .line 523
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 4
    .param p1, "element"    # Lcom/google/gdata/model/Element;
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
    .line 531
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v1, p0, Lcom/google/gdata/model/PathAdapter$ValueAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v1, p2}, Lcom/google/gdata/model/Path;->toAbsolute(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path;

    move-result-object v0

    .line 533
    .local v0, "bound":Lcom/google/gdata/model/Path;
    invoke-static {v0, p1}, Lcom/google/gdata/model/PathAdapter;->getFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object p1

    .line 534
    if-nez p1, :cond_0

    .line 535
    const/4 v1, 0x0

    .line 543
    :goto_0
    return-object v1

    .line 539
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 540
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElement()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedAttribute()Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/gdata/model/PathAdapter;->generateAttributeValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/AttributeMetadata;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElement()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/gdata/model/PathAdapter;->generateTextValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 4
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .param p3, "value"    # Ljava/lang/Object;
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
    .line 555
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    iget-object v1, p0, Lcom/google/gdata/model/PathAdapter$ValueAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-virtual {v1, p2}, Lcom/google/gdata/model/Path;->toAbsolute(Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Path;

    move-result-object v0

    .line 556
    .local v0, "bound":Lcom/google/gdata/model/Path;
    iget-object v1, p0, Lcom/google/gdata/model/PathAdapter$ValueAdapter;->path:Lcom/google/gdata/model/Path;

    invoke-static {v1, p1}, Lcom/google/gdata/model/PathAdapter;->createFinalElement(Lcom/google/gdata/model/Path;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    move-result-object p1

    .line 558
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->selectsAttribute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElement()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedAttribute()Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v3

    invoke-static {p1, v1, v2, v3, p3}, Lcom/google/gdata/model/PathAdapter;->parseAttributeValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/AttributeMetadata;Ljava/lang/Object;)V

    .line 565
    :goto_0
    return-void

    .line 563
    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/model/Path;->getSelectedElement()Lcom/google/gdata/model/ElementMetadata;

    move-result-object v1

    invoke-static {p1, v1, p3}, Lcom/google/gdata/model/PathAdapter;->parseTextValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V

    goto :goto_0
.end method
