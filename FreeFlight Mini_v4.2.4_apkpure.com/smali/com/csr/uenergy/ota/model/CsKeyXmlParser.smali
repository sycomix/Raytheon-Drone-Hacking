.class public Lcom/csr/uenergy/ota/model/CsKeyXmlParser;
.super Ljava/lang/Object;
.source "CsKeyXmlParser.java"


# static fields
.field public static final CSKEY_XML_FILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/csr/cskey_db.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->CSKEY_XML_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readPskeyEntries(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    const/4 v10, 0x0

    const-string v11, "PSKEYS"

    invoke-interface {p1, v12, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_7

    .line 121
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v10

    if-ne v10, v12, :cond_0

    .line 124
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "entryName":Ljava/lang/String;
    const-string v10, "PSKEY"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 127
    const/4 v8, 0x0

    .line 128
    .local v8, "name":Ljava/lang/String;
    const/4 v6, -0x1

    .line 129
    .local v6, "id":I
    const/4 v9, -0x1

    .line 130
    .local v9, "offset":I
    const/4 v7, -0x1

    .line 131
    .local v7, "length":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 132
    .local v1, "attrSize":I
    const/4 v10, 0x4

    if-lt v1, v10, :cond_0

    .line 133
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_5

    .line 134
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "attName":Ljava/lang/String;
    const-string v10, "NAME"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 136
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    :cond_2
    const-string v10, "ID"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 139
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 141
    :cond_3
    const-string v10, "OFFSET"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 142
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_2

    .line 144
    :cond_4
    const-string v10, "LENGTH"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    invoke-interface {p1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_2

    .line 148
    .end local v0    # "attName":Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/csr/uenergy/ota/model/CskeyItem;

    invoke-direct {v3, v8, v6, v9, v7}, Lcom/csr/uenergy/ota/model/CskeyItem;-><init>(Ljava/lang/String;III)V

    .line 149
    .local v3, "entry":Lcom/csr/uenergy/ota/model/CskeyItem;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 154
    .end local v1    # "attrSize":I
    .end local v3    # "entry":Lcom/csr/uenergy/ota/model/CskeyItem;
    .end local v5    # "i":I
    .end local v6    # "id":I
    .end local v7    # "length":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "offset":I
    :cond_6
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 157
    .end local v4    # "entryName":Ljava/lang/String;
    :cond_7
    return-object v2
.end method

.method private readPskeysEntry(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "buildId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    const/4 v5, 0x0

    const-string v6, "PSKEY_DATABASE"

    invoke-interface {p1, v8, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 84
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "name":Ljava/lang/String;
    const-string v5, "PSKEYS"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "key":Ljava/lang/String;
    const-string v5, "BUILD_ID"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 89
    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 90
    .local v3, "pskeyBuildId":I
    if-ne p2, v3, :cond_1

    .line 91
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->readPskeyEntries(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    .line 92
    .local v4, "rtnList":Ljava/util/List;, "Ljava/util/List<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 93
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 96
    .end local v4    # "rtnList":Ljava/util/List;, "Ljava/util/List<Lcom/csr/uenergy/ota/model/CskeyItem;>;"
    :cond_1
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 100
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "pskeyBuildId":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 103
    .end local v2    # "name":Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 175
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_1

    .line 176
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 181
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 179
    goto :goto_0

    .line 185
    :cond_1
    return-void

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;I)Ljava/util/List;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buildId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/csr/uenergy/ota/model/CskeyItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 52
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 53
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 54
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 55
    invoke-direct {p0, v0, p2}, Lcom/csr/uenergy/ota/model/CsKeyXmlParser;->readPskeysEntry(Lorg/xmlpull/v1/XmlPullParser;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 55
    return-object v1

    .line 58
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v1
.end method
