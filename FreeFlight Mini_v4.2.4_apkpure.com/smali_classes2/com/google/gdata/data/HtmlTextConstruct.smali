.class public Lcom/google/gdata/data/HtmlTextConstruct;
.super Lcom/google/gdata/data/TextConstruct;
.source "HtmlTextConstruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/HtmlTextConstruct$1;,
        Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected html:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gdata/data/HtmlTextConstruct;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "lang"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/TextConstruct;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/google/gdata/data/HtmlTextConstruct;->lang:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "type"

    const-string v3, "html"

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/google/gdata/data/HtmlTextConstruct;->lang:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 101
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "xml:lang"

    iget-object v3, p0, Lcom/google/gdata/data/HtmlTextConstruct;->lang:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v2, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v0, v2}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V
    .locals 3
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "rssFormat"    # Lcom/google/gdata/data/TextConstruct$RssFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 126
    sget-object v0, Lcom/google/gdata/data/HtmlTextConstruct$1;->$SwitchMap$com$google$gdata$data$TextConstruct$RssFormat:[I

    invoke-virtual {p3}, Lcom/google/gdata/data/TextConstruct$RssFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    sget-boolean v0, Lcom/google/gdata/data/HtmlTextConstruct;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :pswitch_0
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v1, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_1
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p0}, Lcom/google/gdata/data/HtmlTextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v2, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/HtmlTextConstruct;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gdata/util/common/html/HtmlToText;->htmlToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/gdata/data/HtmlTextConstruct;->getHtml()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHtml(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    return-void
.end method
