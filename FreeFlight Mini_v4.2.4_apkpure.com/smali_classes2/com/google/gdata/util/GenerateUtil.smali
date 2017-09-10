.class public Lcom/google/gdata/util/GenerateUtil;
.super Ljava/lang/Object;
.source "GenerateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/IEntry;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p0, "writer"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p1, "entry"    # Lcom/google/gdata/data/IEntry;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    instance-of v0, p1, Lcom/google/gdata/data/BaseEntry;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/google/gdata/data/BaseEntry;

    .end local p1    # "entry":Lcom/google/gdata/data/IEntry;
    invoke-virtual {p1, p0, p2}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 46
    :cond_0
    return-void
.end method

.method public static generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/IFeed;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p0, "writer"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p1, "feed"    # Lcom/google/gdata/data/IFeed;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    instance-of v0, p1, Lcom/google/gdata/data/BaseFeed;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Lcom/google/gdata/data/BaseFeed;

    .end local p1    # "feed":Lcom/google/gdata/data/IFeed;
    invoke-virtual {p1, p0, p2}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 58
    :cond_0
    return-void
.end method
