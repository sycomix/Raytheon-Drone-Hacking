.class final Lcom/google/gdata/model/AttributeMetadataImpl;
.super Lcom/google/gdata/model/MetadataImpl;
.source "AttributeMetadataImpl.java"

# interfaces
.implements Lcom/google/gdata/model/AttributeMetadata;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/model/MetadataImpl",
        "<TD;>;",
        "Lcom/google/gdata/model/AttributeMetadata",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private final attKey:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/AttributeTransform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)V
    .locals 0
    .param p1, "schema"    # Lcom/google/gdata/model/Schema;
    .param p2, "transform"    # Lcom/google/gdata/model/AttributeTransform;
    .param p5, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Schema;",
            "Lcom/google/gdata/model/AttributeTransform;",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;",
            "Lcom/google/gdata/model/MetadataContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/google/gdata/model/AttributeMetadataImpl;, "Lcom/google/gdata/model/AttributeMetadataImpl<TD;>;"
    .local p3, "parent":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .local p4, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<TD;>;"
    invoke-direct/range {p0 .. p5}, Lcom/google/gdata/model/MetadataImpl;-><init>(Lcom/google/gdata/model/Schema;Lcom/google/gdata/model/Transform;Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/MetadataKey;Lcom/google/gdata/model/MetadataContext;)V

    .line 44
    iput-object p4, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->attKey:Lcom/google/gdata/model/AttributeKey;

    .line 45
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;
    .locals 3
    .param p1, "context"    # Lcom/google/gdata/model/MetadataContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/MetadataContext;",
            ")",
            "Lcom/google/gdata/model/AttributeMetadata",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/gdata/model/AttributeMetadataImpl;, "Lcom/google/gdata/model/AttributeMetadataImpl<TD;>;"
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->schema:Lcom/google/gdata/model/Schema;

    iget-object v1, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->parent:Lcom/google/gdata/model/ElementKey;

    iget-object v2, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->attKey:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/gdata/model/Schema;->bind(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/MetadataContext;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;
    .locals 2
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
    .line 63
    .local p0, "this":Lcom/google/gdata/model/AttributeMetadataImpl;, "Lcom/google/gdata/model/AttributeMetadataImpl<TD;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-super {p0, p1, p2}, Lcom/google/gdata/model/MetadataImpl;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->attKey:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p1, v1}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method public getKey()Lcom/google/gdata/model/AttributeKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/model/AttributeKey",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/gdata/model/AttributeMetadataImpl;, "Lcom/google/gdata/model/AttributeMetadataImpl<TD;>;"
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->attKey:Lcom/google/gdata/model/AttributeKey;

    return-object v0
.end method

.method public bridge synthetic getKey()Lcom/google/gdata/model/MetadataKey;
    .locals 1

    .prologue
    .line 29
    .local p0, "this":Lcom/google/gdata/model/AttributeMetadataImpl;, "Lcom/google/gdata/model/AttributeMetadataImpl<TD;>;"
    invoke-virtual {p0}, Lcom/google/gdata/model/AttributeMetadataImpl;->getKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    return-object v0
.end method

.method public parseValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)V
    .locals 2
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
    .line 73
    .local p0, "this":Lcom/google/gdata/model/AttributeMetadataImpl;, "Lcom/google/gdata/model/AttributeMetadataImpl<TD;>;"
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/model/MetadataImpl;->parse(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->attKey:Lcom/google/gdata/model/AttributeKey;

    iget-object v1, p0, Lcom/google/gdata/model/AttributeMetadataImpl;->attKey:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {v1}, Lcom/google/gdata/model/AttributeKey;->getDatatype()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/google/gdata/wireformats/ObjectConverter;->getValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 77
    :cond_0
    return-void
.end method
