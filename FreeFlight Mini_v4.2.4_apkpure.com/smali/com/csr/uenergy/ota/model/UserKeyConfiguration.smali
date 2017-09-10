.class public Lcom/csr/uenergy/ota/model/UserKeyConfiguration;
.super Ljava/lang/Object;
.source "UserKeyConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;
    }
.end annotation


# static fields
.field public static final ConfirmationMethod1:I = 0x1

.field public static final ConfirmationMethod2:I = 0x2

.field public static final ConfirmationMethod3:I = 0x3

.field public static final ConfirmationMethod4:I = 0x4

.field public static final ConfirmationMethodUnknown:I = 0x0

.field public static final UpgradeMethod1:I = 0x1

.field public static final UpgradeMethod2:I = 0x2

.field public static final UpgradeMethod3:I = 0x3

.field public static final UpgradeMethod4:I = 0x4

.field public static final UpgradeMethodUnknown:I


# instance fields
.field private mConfirmationMethod:I

.field private mUpgradeBehaviour:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v0, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mUpgradeBehaviour:I

    .line 60
    iput v0, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mConfirmationMethod:I

    .line 61
    return-void
.end method

.method static synthetic access$002(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/UserKeyConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mUpgradeBehaviour:I

    return p1
.end method

.method static synthetic access$102(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;I)I
    .locals 0
    .param p0, "x0"    # Lcom/csr/uenergy/ota/model/UserKeyConfiguration;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mConfirmationMethod:I

    return p1
.end method


# virtual methods
.method public getConfirmationMethod()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mConfirmationMethod:I

    return v0
.end method

.method public getUpgradeBehaviour()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mUpgradeBehaviour:I

    return v0
.end method

.method public load(Ljava/io/InputStream;)Z
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v7, 0x0

    .line 150
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return v7

    .line 152
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    .line 153
    .local v5, "spFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 154
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    .line 156
    .local v6, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;

    invoke-direct {v0, p0}, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;-><init>(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;)V

    .line 157
    .local v0, "configXmlHandler":Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;
    invoke-interface {v6, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 158
    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v8}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 173
    const/4 v7, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "configXmlHandler":Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;
    .end local v2    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v5    # "spFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v6    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v3

    .line 161
    .local v3, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v8, "UserConfiguration"

    const-string v9, "sax parse error"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v3    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v4

    .line 165
    .local v4, "se":Lorg/xml/sax/SAXException;
    const-string v8, "UserConfiguration"

    const-string v9, "sax error"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 168
    .end local v4    # "se":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 12
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 113
    .local v7, "spFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 114
    .local v4, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v8

    .line 116
    .local v8, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;

    invoke-direct {v1, p0}, Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;-><init>(Lcom/csr/uenergy/ota/model/UserKeyConfiguration;)V

    .line 117
    .local v1, "configXmlHandler":Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;
    invoke-interface {v8, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 118
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    .local v3, "is":Ljava/io/InputStream;
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v8, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 138
    const/4 v9, 0x1

    .end local v0    # "configFile":Ljava/io/File;
    .end local v1    # "configXmlHandler":Lcom/csr/uenergy/ota/model/UserKeyConfiguration$ConfigXMLHandler;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/SAXParser;
    .end local v7    # "spFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v8    # "xmlReader":Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    return v9

    .line 125
    :catch_0
    move-exception v5

    .line 126
    .local v5, "pce":Ljavax/xml/parsers/ParserConfigurationException;
    const-string v10, "UserConfiguration"

    const-string v11, "sax parse error"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 129
    .end local v5    # "pce":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v6

    .line 130
    .local v6, "se":Lorg/xml/sax/SAXException;
    const-string v10, "UserConfiguration"

    const-string v11, "sax error"

    invoke-static {v10, v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    .end local v6    # "se":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .line 134
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setConfirmationMethod(I)V
    .locals 0
    .param p1, "confirmation"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mConfirmationMethod:I

    .line 99
    return-void
.end method

.method public setUpgradeBehaviour(I)V
    .locals 0
    .param p1, "behaviour"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/csr/uenergy/ota/model/UserKeyConfiguration;->mUpgradeBehaviour:I

    .line 80
    return-void
.end method
