.class public Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "UserKeyConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/csr/uenergy/ota/model/UserKeyConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigXMLHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/csr/uenergy/ota/model/UserKeyConfiguration;


# direct methods
.method public constructor <init>(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/csr/uenergy/ota/model/UserKeyConfiguration;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;->this$0:Lcom/csr/uenergy/ota/model/UserKeyConfiguration;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 196
    const-string v1, "item"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userkey0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;->this$0:Lcom/csr/uenergy/ota/model/UserKeyConfiguration;

    const/4 v2, 0x1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->access$002(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 210
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userkey1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    :try_start_1
    iget-object v1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;->this$0:Lcom/csr/uenergy/ota/model/UserKeyConfiguration;

    const/4 v2, 0x1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->access$102(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
