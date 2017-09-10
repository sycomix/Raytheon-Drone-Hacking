.class public Lcom/google/gdata/data/BaseFeed$FeedHandler;
.super Lcom/google/gdata/data/Source$SourceHandler;
.source "BaseFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeedHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;,
        Lcom/google/gdata/data/BaseFeed$FeedHandler$StartIndexHandler;,
        Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;
    }
.end annotation


# instance fields
.field private openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field final synthetic this$0:Lcom/google/gdata/data/BaseFeed;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 897
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    .line 898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/Source$SourceHandler;-><init>(Lcom/google/gdata/data/Source;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 895
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getOpenSearchNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 899
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 9
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    const/4 v8, 0x0

    .line 928
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/BaseFeed;->getExtensionHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v7

    .line 931
    .local v7, "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    if-eqz v7, :cond_0

    .line 963
    .end local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :goto_0
    return-object v7

    .line 935
    .restart local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :cond_0
    const-string v0, "http://www.w3.org/2005/Atom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    const-string v0, "entry"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v0}, Lcom/google/gdata/data/BaseFeed;->createEntry()Lcom/google/gdata/data/BaseEntry;

    move-result-object v6

    .line 940
    .local v6, "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v0, v0, Lcom/google/gdata/data/BaseFeed;->entries:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    new-instance v7, Lcom/google/gdata/data/BaseEntry$AtomHandler;

    .end local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v7, v6, v0}, Lcom/google/gdata/data/BaseEntry$AtomHandler;-><init>(Lcom/google/gdata/data/BaseEntry;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0

    .line 947
    .end local v6    # "entry":Lcom/google/gdata/data/BaseEntry;, "TE;"
    .restart local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source$SourceHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v7

    goto :goto_0

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->openSearchNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 951
    const-string v0, "totalResults"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 952
    new-instance v7, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;

    .end local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    invoke-direct {v7, p0, v8}, Lcom/google/gdata/data/BaseFeed$FeedHandler$TotalResultsHandler;-><init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;Lcom/google/gdata/data/BaseFeed$1;)V

    goto :goto_0

    .line 953
    .restart local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :cond_3
    const-string v0, "startIndex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 954
    new-instance v7, Lcom/google/gdata/data/BaseFeed$FeedHandler$StartIndexHandler;

    .end local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    invoke-direct {v7, p0, v8}, Lcom/google/gdata/data/BaseFeed$FeedHandler$StartIndexHandler;-><init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;Lcom/google/gdata/data/BaseFeed$1;)V

    goto :goto_0

    .line 955
    .restart local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :cond_4
    const-string v0, "itemsPerPage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 956
    new-instance v7, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;

    .end local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    invoke-direct {v7, p0, v8}, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;-><init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;Lcom/google/gdata/data/BaseFeed$1;)V

    goto :goto_0

    .line 960
    .restart local v7    # "extensionHandler":Lcom/google/gdata/util/XmlParser$ElementHandler;
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source$SourceHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v7

    goto :goto_0

    :cond_6
    move-object v7, v8

    .line 963
    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    const-string v0, "etag"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/BaseFeed;->setEtag(Ljava/lang/String;)V

    .line 919
    :goto_0
    return-void

    .line 909
    :cond_0
    const-string v0, "fields"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/BaseFeed;->setSelectedFields(Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_1
    const-string v0, "kind"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 914
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/BaseFeed;->setKind(Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/Source$SourceHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 1047
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler;"
    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v1, v0, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    invoke-virtual {v0}, Lcom/google/gdata/data/BaseFeed;->getEntryPostLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->canPost:Z

    .line 1048
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
