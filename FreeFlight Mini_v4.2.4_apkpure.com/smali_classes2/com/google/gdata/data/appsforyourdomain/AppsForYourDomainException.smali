.class public Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
.super Lcom/google/gdata/util/ServiceException;
.source "AppsForYourDomainException.java"


# static fields
.field protected static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# instance fields
.field protected errorCode:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

.field protected invalidInput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->UnknownError:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;-><init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    .prologue
    .line 74
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;-><init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;Ljava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;
    .param p2, "invalidInput"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;-><init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;Ljava/lang/String;I)V
    .locals 1
    .param p1, "errorCode"    # Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;
    .param p2, "invalidInput"    # Ljava/lang/String;
    .param p3, "httpReturnCode"    # I

    .prologue
    .line 54
    const-string v0, "AppsForYourDomainException"

    invoke-direct {p0, v0}, Lcom/google/gdata/util/ServiceException;-><init>(Ljava/lang/String;)V

    .line 55
    if-nez p1, :cond_1

    .line 56
    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p3, v0, :cond_0

    .line 58
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->InvalidValue:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->errorCode:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    .line 65
    :goto_0
    iput-object p2, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->invalidInput:Ljava/lang/String;

    .line 66
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->UnknownError:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    iput-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->errorCode:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    goto :goto_0

    .line 63
    :cond_1
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->errorCode:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    goto :goto_0
.end method

.method public static narrow(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    .locals 14
    .param p0, "se"    # Lcom/google/gdata/util/ServiceException;

    .prologue
    const/4 v10, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    move-object v7, v10

    .line 150
    :goto_0
    return-object v7

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getHttpErrorCodeOverride()I

    move-result v11

    const/16 v12, 0x1f6

    if-ne v11, v12, :cond_2

    .line 108
    new-instance v7, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    sget-object v10, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->ServerBusy:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    const-string v11, "The server is busy and could not complete your request.  Please try again in 30 seconds."

    invoke-direct {v7, v10, v11}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;-><init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getResponseContentType()Lcom/google/gdata/util/ContentType;

    move-result-object v11

    new-instance v12, Lcom/google/gdata/util/ContentType;

    const-string v13, "text/xml"

    invoke-direct {v12, v13}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/google/gdata/util/ContentType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AppsForYourDomainErrors"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 118
    :try_start_0
    sget-object v11, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 119
    .local v1, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v11, Lorg/xml/sax/InputSource;

    new-instance v12, Ljava/io/StringReader;

    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getResponseBody()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 122
    .local v2, "document":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 123
    .local v9, "root":Lorg/w3c/dom/Element;
    const-string v11, "error"

    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 124
    .local v6, "errorList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 125
    .local v4, "error":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 128
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v11, "errorCode"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 131
    .local v5, "errorCode":I
    const-string v11, "invalidInput"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "invalidInput":Ljava/lang/String;
    new-instance v7, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->getEnumFromInt(Ljava/lang/Integer;)Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    move-result-object v11

    invoke-virtual {p0}, Lcom/google/gdata/util/ServiceException;->getHttpErrorCodeOverride()I

    move-result v12

    invoke-direct {v7, v11, v8, v12}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;-><init>(Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 136
    .local v7, "exception":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    goto/16 :goto_0

    .line 139
    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v1    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "document":Lorg/w3c/dom/Document;
    .end local v4    # "error":Lorg/w3c/dom/Node;
    .end local v5    # "errorCode":I
    .end local v6    # "errorList":Lorg/w3c/dom/NodeList;
    .end local v7    # "exception":Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;
    .end local v8    # "invalidInput":Ljava/lang/String;
    .end local v9    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/NumberFormatException;
    move-object v7, v10

    .line 140
    goto/16 :goto_0

    .line 141
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v7, v10

    .line 142
    goto/16 :goto_0

    .line 143
    .end local v3    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v3

    .local v3, "e":Lorg/xml/sax/SAXException;
    move-object v7, v10

    .line 144
    goto/16 :goto_0

    .line 145
    .end local v3    # "e":Lorg/xml/sax/SAXException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    move-object v7, v10

    .line 146
    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    move-object v7, v10

    .line 150
    goto/16 :goto_0
.end method


# virtual methods
.method public getErrorCode()Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->errorCode:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    return-object v0
.end method

.method public getInvalidInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->invalidInput:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->errorCode:Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;

    invoke-virtual {v1}, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainErrorCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/appsforyourdomain/AppsForYourDomainException;->invalidInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
