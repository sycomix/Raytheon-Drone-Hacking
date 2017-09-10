.class public Lcom/google/gdata/util/XmlBlob;
.super Ljava/lang/Object;
.source "XmlBlob.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected base:Ljava/lang/String;

.field protected blob:Ljava/lang/String;

.field protected fullText:Ljava/lang/String;

.field protected lang:Ljava/lang/String;

.field protected namespaces:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/util/XmlBlob;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    return-void
.end method

.method public static endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;)V
    .locals 1
    .param p0, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "xml"    # Lcom/google/gdata/util/XmlBlob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->innerXml(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public static startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 12
    .param p0, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "xml"    # Lcom/google/gdata/util/XmlBlob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Lcom/google/gdata/util/XmlBlob;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    .local p4, "additionalAttrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    .local p5, "additionalNs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    if-eqz p3, :cond_b

    .line 111
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getLang()Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "lang":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getBase()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "base":Ljava/lang/String;
    if-nez v7, :cond_0

    if-eqz v3, :cond_5

    .line 116
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v2, "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    if-eqz p4, :cond_1

    .line 119
    move-object/from16 v0, p4

    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 122
    :cond_1
    if-eqz v7, :cond_2

    .line 123
    new-instance v9, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v10, "xml:lang"

    invoke-direct {v9, v10, v7}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    if-eqz v3, :cond_3

    .line 127
    new-instance v9, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string/jumbo v10, "xml:base"

    invoke-direct {v9, v10, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lcom/google/gdata/util/XmlBlob;->getNamespaces()Ljava/util/List;

    move-result-object v4

    .line 135
    .local v4, "blobNamespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    if-nez p5, :cond_8

    const/4 v1, 0x0

    .line 137
    .local v1, "additionalNsSize":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_9

    if-nez v1, :cond_9

    .line 139
    const/4 v8, 0x0

    .line 166
    .end local v1    # "additionalNsSize":I
    .end local v3    # "base":Ljava/lang/String;
    .end local v4    # "blobNamespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    .end local v7    # "lang":Ljava/lang/String;
    .local v8, "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2, v2, v8}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 167
    return-void

    .line 130
    .end local v2    # "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    .end local v8    # "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    .restart local v3    # "base":Ljava/lang/String;
    .restart local v7    # "lang":Ljava/lang/String;
    :cond_5
    sget-boolean v9, Lcom/google/gdata/util/XmlBlob;->$assertionsDisabled:Z

    if-nez v9, :cond_7

    if-nez v7, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 131
    :cond_7
    move-object/from16 v2, p4

    .restart local v2    # "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    goto :goto_0

    .line 135
    .restart local v4    # "blobNamespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    :cond_8
    invoke-interface/range {p5 .. p5}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_1

    .line 143
    .restart local v1    # "additionalNsSize":I
    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .restart local v8    # "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 152
    .local v5, "blobNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    new-instance v9, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getAlias()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 156
    .end local v5    # "blobNs":Lcom/google/gdata/util/common/xml/XmlNamespace;
    :cond_a
    if-eqz p5, :cond_4

    .line 157
    move-object/from16 v0, p5

    invoke-interface {v8, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 161
    .end local v1    # "additionalNsSize":I
    .end local v2    # "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    .end local v3    # "base":Ljava/lang/String;
    .end local v4    # "blobNamespaces":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "lang":Ljava/lang/String;
    .end local v8    # "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    :cond_b
    sget-boolean v9, Lcom/google/gdata/util/XmlBlob;->$assertionsDisabled:Z

    if-nez v9, :cond_c

    if-eqz p3, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 162
    :cond_c
    move-object/from16 v2, p4

    .line 163
    .restart local v2    # "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    move-object/from16 v8, p5

    .restart local v8    # "namespaces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    goto :goto_2
.end method


# virtual methods
.method public addNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)Z
    .locals 1
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->base:Ljava/lang/String;

    return-object v0
.end method

.method public getBlob()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->blob:Ljava/lang/String;

    return-object v0
.end method

.method public getFullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->fullText:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/gdata/util/XmlBlob;->namespaces:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setBase(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->base:Ljava/lang/String;

    return-void
.end method

.method public setBlob(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->blob:Ljava/lang/String;

    return-void
.end method

.method public setFullText(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->fullText:Ljava/lang/String;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/util/XmlBlob;->lang:Ljava/lang/String;

    return-void
.end method
