.class public Lcom/google/gdata/data/OpenSearchDescriptionDocument;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "OpenSearchDescriptionDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$1;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;,
        Lcom/google/gdata/data/OpenSearchDescriptionDocument$SyndicationRight;
    }
.end annotation


# instance fields
.field protected adultContent:Z

.field protected attribution:Ljava/lang/String;

.field protected contact:Ljava/lang/String;

.field protected description:Ljava/lang/String;

.field protected developer:Ljava/lang/String;

.field protected format:Ljava/lang/String;

.field protected image:Ljava/lang/String;

.field protected longName:Ljava/lang/String;

.field protected sampleSearch:Ljava/lang/String;

.field protected shortName:Ljava/lang/String;

.field protected syndicationRight:I

.field protected tags:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 133
    iput v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    .line 166
    iput-boolean v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument;)V
    .locals 1
    .param p1, "doc"    # Lcom/google/gdata/data/OpenSearchDescriptionDocument;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 133
    iput v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    .line 166
    iput-boolean v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    .line 44
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    .line 51
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    .line 55
    iget v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    iput v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    .line 56
    iget-boolean v0, p1, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    iput-boolean v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    .line 57
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 5
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 180
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchDescNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    .line 182
    .local v0, "openSearchDescNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    const-string v2, "OpenSearchDescription"

    invoke-virtual {p1, v0, v2, v4, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 184
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "Url"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 189
    const-string v2, "Format"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 193
    const-string v2, "ShortName"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 196
    :cond_2
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 197
    const-string v2, "LongName"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 201
    const-string v2, "Description"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 204
    :cond_4
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 205
    const-string v2, "Tags"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 208
    :cond_5
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 209
    const-string v2, "Image"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 212
    :cond_6
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 213
    const-string v2, "SampleSearch"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 217
    :cond_7
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 218
    const-string v2, "Developer"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 222
    :cond_8
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 223
    const-string v2, "Contact"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 227
    const-string v2, "Attribution"

    iget-object v3, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 232
    :cond_a
    iget v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    packed-switch v2, :pswitch_data_0

    .line 235
    const-string v1, "open"

    .line 248
    .local v1, "syndicationRightString":Ljava/lang/String;
    :goto_0
    const-string v2, "SyndicationRight"

    invoke-virtual {p1, v0, v2, v4, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 251
    iget-boolean v2, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    if-eqz v2, :cond_b

    .line 252
    const-string v2, "AdultContent"

    const-string v3, "true"

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 256
    :cond_b
    const-string v2, "OpenSearchDescription"

    invoke-virtual {p1, v0, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 257
    return-void

    .line 238
    .end local v1    # "syndicationRightString":Ljava/lang/String;
    :pswitch_0
    const-string v1, "limited"

    .line 239
    .restart local v1    # "syndicationRightString":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v1    # "syndicationRightString":Ljava/lang/String;
    :pswitch_1
    const-string v1, "private"

    .line 242
    .restart local v1    # "syndicationRightString":Ljava/lang/String;
    goto :goto_0

    .line 244
    .end local v1    # "syndicationRightString":Ljava/lang/String;
    :pswitch_2
    const-string v1, "closed"

    .restart local v1    # "syndicationRightString":Ljava/lang/String;
    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getAdultContent()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    return v0
.end method

.method public final getAttribution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    return-object v0
.end method

.method public final getContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    return-object v0
.end method

.method public final getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSampleSearch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyndicationRight()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    return v0
.end method

.method public final getTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lcom/google/gdata/data/ExtensionProfile;Ljava/io/Reader;)V
    .locals 5
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchDescNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    .line 309
    .local v0, "openSearchDescNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    new-instance v2, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;

    invoke-direct {v2, p0, p1}, Lcom/google/gdata/data/OpenSearchDescriptionDocument$Handler;-><init>(Lcom/google/gdata/data/OpenSearchDescriptionDocument;Lcom/google/gdata/data/ExtensionProfile;)V

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpenSearchDescription"

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setAdultContent(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->adultContent:Z

    return-void
.end method

.method public setAttribution(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->attribution:Ljava/lang/String;

    return-void
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->developer:Ljava/lang/String;

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->image:Ljava/lang/String;

    return-void
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->longName:Ljava/lang/String;

    return-void
.end method

.method public setSampleSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->sampleSearch:Ljava/lang/String;

    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    return-void
.end method

.method public setSyndicationRight(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->syndicationRight:I

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->url:Ljava/lang/String;

    return-void
.end method

.method public validateConfiguration()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceConfigurationException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->format:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/google/gdata/util/ServiceConfigurationException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingFormat:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceConfigurationException;-><init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V

    throw v0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->shortName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 272
    new-instance v0, Lcom/google/gdata/util/ServiceConfigurationException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingShortName:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceConfigurationException;-><init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V

    throw v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->description:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 277
    new-instance v0, Lcom/google/gdata/util/ServiceConfigurationException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingDescription:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceConfigurationException;-><init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V

    throw v0

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->tags:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 282
    new-instance v0, Lcom/google/gdata/util/ServiceConfigurationException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingTags:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceConfigurationException;-><init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V

    throw v0

    .line 286
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/OpenSearchDescriptionDocument;->contact:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 287
    new-instance v0, Lcom/google/gdata/util/ServiceConfigurationException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingContact:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ServiceConfigurationException;-><init>(Lcom/google/gdata/util/ErrorDomain$ErrorCode;)V

    throw v0

    .line 290
    :cond_4
    return-void
.end method
