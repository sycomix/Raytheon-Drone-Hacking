.class public Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;
.super Ljava/lang/Object;
.source "AttributeHistogram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/gbase/client/AttributeHistogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UniqueValue"
.end annotation


# instance fields
.field private final count:I

.field private final value:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->count:I

    .line 286
    iput-object p2, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->value:Ljava/lang/String;

    .line 287
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lcom/google/api/gbase/client/AttributeHistogram$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/google/api/gbase/client/AttributeHistogram$1;

    .prologue
    .line 274
    invoke-direct {p0, p1, p2}, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method generate(Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget v1, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->count:I

    if-lez v1, :cond_0

    .line 320
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "count"

    iget v3, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 323
    :cond_0
    sget-object v1, Lcom/google/api/gbase/client/GoogleBaseNamespaces;->GM:Lcom/google/gdata/util/common/xml/XmlWriter$Namespace;

    const-string v2, "value"

    iget-object v3, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->value:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->count:I

    return v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/api/gbase/client/AttributeHistogram$UniqueValue;->value:Ljava/lang/String;

    return-object v0
.end method
