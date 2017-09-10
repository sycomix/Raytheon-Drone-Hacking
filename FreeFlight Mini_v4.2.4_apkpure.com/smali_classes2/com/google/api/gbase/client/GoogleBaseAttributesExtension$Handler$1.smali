.class Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GoogleBaseAttributesExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private height:I

.field final synthetic this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

.field final synthetic val$localName:Ljava/lang/String;

.field final synthetic val$uri:Ljava/lang/String;

.field private width:I


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1892
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    iput-object p2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$localName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 1893
    iput v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->width:I

    .line 1894
    iput v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->height:I

    return-void
.end method

.method private parseInteger(Ljava/lang/String;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1930
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1931
    :catch_0
    move-exception v0

    .line 1932
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1921
    const-string v0, "width"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1922
    invoke-direct {p0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->parseInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->width:I

    .line 1926
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    const-string v0, "height"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    invoke-direct {p0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->parseInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->height:I

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 4

    .prologue
    .line 1898
    const-string v1, "http://base.google.com/ns-metadata/1.0"

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1899
    const-string v1, "adjusted_value"

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1900
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    invoke-static {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->access$300(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAdjustments()Lcom/google/api/gbase/client/Adjustments;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/gbase/client/Adjustments;->setValue(Ljava/lang/String;)V

    .line 1916
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    const-string v1, "adjusted_name"

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1902
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    invoke-static {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->access$300(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getAdjustments()Lcom/google/api/gbase/client/Adjustments;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/api/gbase/client/Adjustments;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 1903
    :cond_2
    const-string v1, "thumbnail"

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    new-instance v0, Lcom/google/api/gbase/client/Thumbnail;

    invoke-direct {v0}, Lcom/google/api/gbase/client/Thumbnail;-><init>()V

    .line 1905
    .local v0, "thumbnail":Lcom/google/api/gbase/client/Thumbnail;
    iget-object v1, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gbase/client/Thumbnail;->setUrl(Ljava/lang/String;)V

    .line 1906
    iget v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->width:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->height:I

    if-lez v1, :cond_3

    .line 1907
    iget v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->width:I

    iget v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/google/api/gbase/client/Thumbnail;->setSize(II)V

    .line 1909
    :cond_3
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    invoke-static {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->access$300(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1914
    .end local v0    # "thumbnail":Lcom/google/api/gbase/client/Thumbnail;
    :cond_4
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->this$1:Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;

    invoke-static {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;->access$300(Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler;)Lcom/google/api/gbase/client/GoogleBaseAttribute;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttributesExtension$Handler$1;->val$localName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/gdata/util/XmlParser$ElementHandler;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->appendSubElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
