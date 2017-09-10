.class public Lcom/google/gdata/wireformats/output/RssGenerator;
.super Lcom/google/gdata/wireformats/output/XmlGenerator;
.source "RssGenerator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/wireformats/output/XmlGenerator",
        "<",
        "Lcom/google/gdata/data/IAtom;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/XmlGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/IAtom;)V
    .locals 5
    .param p1, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "source"    # Lcom/google/gdata/data/IAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    instance-of v2, p3, Lcom/google/gdata/data/IFeed;

    if-eqz v2, :cond_1

    move-object v1, p3

    .line 50
    check-cast v1, Lcom/google/gdata/data/IFeed;

    .line 51
    .local v1, "feed":Lcom/google/gdata/data/IFeed;
    instance-of v2, v1, Lcom/google/gdata/data/BaseFeed;

    if-eqz v2, :cond_0

    .line 52
    check-cast v1, Lcom/google/gdata/data/BaseFeed;

    .end local v1    # "feed":Lcom/google/gdata/data/IFeed;
    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/gdata/data/BaseFeed;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    :goto_0
    return-void

    .line 54
    .restart local v1    # "feed":Lcom/google/gdata/data/IFeed;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Feed was not an instance of BaseFeed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    .end local v1    # "feed":Lcom/google/gdata/data/IFeed;
    :cond_1
    instance-of v2, p3, Lcom/google/gdata/data/IEntry;

    if-eqz v2, :cond_3

    move-object v0, p3

    .line 58
    check-cast v0, Lcom/google/gdata/data/IEntry;

    .line 59
    .local v0, "entry":Lcom/google/gdata/data/IEntry;
    instance-of v2, v0, Lcom/google/gdata/data/BaseEntry;

    if-eqz v2, :cond_2

    .line 60
    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .end local v0    # "entry":Lcom/google/gdata/data/IEntry;
    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/google/gdata/data/BaseEntry;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 62
    .restart local v0    # "entry":Lcom/google/gdata/data/IEntry;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Entry was not an instance of BaseEntry"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    .end local v0    # "entry":Lcom/google/gdata/data/IEntry;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected source type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "x1"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p3, Lcom/google/gdata/data/IAtom;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/RssGenerator;->generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/IAtom;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->RSS:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/gdata/data/IAtom;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Lcom/google/gdata/data/IAtom;

    return-object v0
.end method
