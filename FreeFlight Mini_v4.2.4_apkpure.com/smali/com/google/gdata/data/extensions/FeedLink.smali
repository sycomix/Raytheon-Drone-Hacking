.class public Lcom/google/gdata/data/extensions/FeedLink;
.super Lcom/google/gdata/data/Link;
.source "FeedLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "feedLink"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/FeedLink$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/google/gdata/data/BaseFeed",
        "<**>;>",
        "Lcom/google/gdata/data/Link;"
    }
.end annotation


# instance fields
.field protected countHint:Ljava/lang/Integer;

.field protected feed:Lcom/google/gdata/data/BaseFeed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;"
        }
    .end annotation
.end field

.field protected final feedClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TF;>;"
        }
    .end annotation
.end field

.field protected readOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    const-class v0, Lcom/google/gdata/data/Feed;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/FeedLink;-><init>(Ljava/lang/Class;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TF;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    .local p1, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TF;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->readOnly:Z

    .line 64
    iput-object p1, p0, Lcom/google/gdata/data/extensions/FeedLink;->feedClass:Ljava/lang/Class;

    .line 65
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 7
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/FeedLink;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->href:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 117
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "href"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/FeedLink;->href:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->readOnly:Z

    if-eqz v0, :cond_2

    .line 121
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "readOnly"

    const-string/jumbo v2, "true"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->countHint:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 125
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "countHint"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/FeedLink;->countHint:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_3
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "feedLink"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/FeedLink;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    if-eqz v0, :cond_5

    .line 131
    invoke-virtual {p2}, Lcom/google/gdata/data/ExtensionProfile;->getFeedLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v6

    .line 132
    .local v6, "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    if-nez v6, :cond_4

    .line 133
    move-object v6, p2

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v0, p1, v6}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 139
    .end local v6    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/FeedLink;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 141
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "feedLink"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public getCountHint()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->countHint:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFeed()Lcom/google/gdata/data/BaseFeed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    return-object v0
.end method

.method public getFeedClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->feedClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 149
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    new-instance v0, Lcom/google/gdata/data/extensions/FeedLink$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/FeedLink$Handler;-><init>(Lcom/google/gdata/data/extensions/FeedLink;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->readOnly:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    invoke-static {}, Lcom/google/gdata/util/ContentType;->getAtomFeed()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCountHint(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Integer;

    .prologue
    .line 75
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/FeedLink;->countHint:Ljava/lang/Integer;

    return-void
.end method

.method public setFeed(Lcom/google/gdata/data/BaseFeed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    .local p1, "v":Lcom/google/gdata/data/BaseFeed;, "TF;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 70
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iput-boolean p1, p0, Lcom/google/gdata/data/extensions/FeedLink;->readOnly:Z

    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 1
    .param p1, "ev"    # Lcom/google/gdata/data/ExtensionVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/google/gdata/data/extensions/FeedLink;, "Lcom/google/gdata/data/extensions/FeedLink<TF;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/gdata/data/extensions/FeedLink;->feed:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/extensions/FeedLink;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/Link;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 104
    return-void
.end method
