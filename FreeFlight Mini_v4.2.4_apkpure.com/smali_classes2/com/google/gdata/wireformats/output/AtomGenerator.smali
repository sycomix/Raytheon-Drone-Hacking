.class public Lcom/google/gdata/wireformats/output/AtomGenerator;
.super Lcom/google/gdata/wireformats/output/XmlGenerator;
.source "AtomGenerator.java"


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
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/wireformats/output/XmlGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/IAtom;)V
    .locals 6
    .param p1, "xw"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "outProps"    # Lcom/google/gdata/wireformats/output/OutputProperties;
    .param p3, "source"    # Lcom/google/gdata/data/IAtom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    sget-object v3, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->setDefaultNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 52
    invoke-interface {p2}, Lcom/google/gdata/wireformats/output/OutputProperties;->getExtensionProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v1

    .line 53
    .local v1, "extProfile":Lcom/google/gdata/data/ExtensionProfile;
    instance-of v3, p3, Lcom/google/gdata/data/IFeed;

    if-eqz v3, :cond_2

    move-object v2, p3

    .line 54
    check-cast v2, Lcom/google/gdata/data/IFeed;

    .line 55
    .local v2, "feed":Lcom/google/gdata/data/IFeed;
    instance-of v3, v2, Lcom/google/gdata/data/BaseFeed;

    if-eqz v3, :cond_1

    .line 56
    check-cast v2, Lcom/google/gdata/data/BaseFeed;

    .end local v2    # "feed":Lcom/google/gdata/data/IFeed;
    invoke-virtual {v2, p1, v1}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v2    # "feed":Lcom/google/gdata/data/IFeed;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Feed was not an instance of data.BaseFeed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 60
    .end local v2    # "feed":Lcom/google/gdata/data/IFeed;
    :cond_2
    instance-of v3, p3, Lcom/google/gdata/data/IEntry;

    if-eqz v3, :cond_4

    move-object v0, p3

    .line 61
    check-cast v0, Lcom/google/gdata/data/IEntry;

    .line 62
    .local v0, "entry":Lcom/google/gdata/data/IEntry;
    instance-of v3, v0, Lcom/google/gdata/data/BaseEntry;

    if-eqz v3, :cond_3

    .line 63
    check-cast v0, Lcom/google/gdata/data/BaseEntry;

    .end local v0    # "entry":Lcom/google/gdata/data/IEntry;
    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 65
    .restart local v0    # "entry":Lcom/google/gdata/data/IEntry;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Entry was not an instance of data.BaseEntry"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 67
    .end local v0    # "entry":Lcom/google/gdata/data/IEntry;
    :cond_4
    if-eqz p3, :cond_0

    .line 70
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected source type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 37
    check-cast p3, Lcom/google/gdata/data/IAtom;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/gdata/wireformats/output/AtomGenerator;->generateXml(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/wireformats/output/OutputProperties;Lcom/google/gdata/data/IAtom;)V

    return-void
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

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
    .line 44
    const-class v0, Lcom/google/gdata/data/IAtom;

    return-object v0
.end method
