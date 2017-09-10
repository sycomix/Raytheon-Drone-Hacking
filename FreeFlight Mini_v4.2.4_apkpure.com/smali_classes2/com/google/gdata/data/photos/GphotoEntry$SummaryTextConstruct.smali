.class Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;
.super Lcom/google/gdata/data/TextConstruct;
.source "GphotoEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/photos/GphotoEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryTextConstruct"
.end annotation


# instance fields
.field private final wrapped:Lcom/google/gdata/data/TextConstruct;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;->wrapped:Lcom/google/gdata/data/TextConstruct;

    .line 188
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;->wrapped:Lcom/google/gdata/data/TextConstruct;

    const-string v1, "description"

    sget-object v2, Lcom/google/gdata/data/TextConstruct$RssFormat;->FULL_HTML:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 194
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V
    .locals 1
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "rssFormat"    # Lcom/google/gdata/data/TextConstruct$RssFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;->wrapped:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 200
    return-void
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;->wrapped:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;->wrapped:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getType()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoEntry$SummaryTextConstruct;->wrapped:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->isEmpty()Z

    move-result v0

    return v0
.end method
