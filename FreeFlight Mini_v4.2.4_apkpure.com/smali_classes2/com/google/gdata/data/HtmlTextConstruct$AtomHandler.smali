.class public Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "HtmlTextConstruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/HtmlTextConstruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/HtmlTextConstruct;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/HtmlTextConstruct;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->this$0:Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 155
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/util/XmlParser$ElementHandler;->processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_1
    return-void
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->value:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->this$0:Lcom/google/gdata/data/HtmlTextConstruct;

    iget-object v1, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/HtmlTextConstruct;->html:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->this$0:Lcom/google/gdata/data/HtmlTextConstruct;

    iget-object v1, p0, Lcom/google/gdata/data/HtmlTextConstruct$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/HtmlTextConstruct;->lang:Ljava/lang/String;

    .line 176
    return-void
.end method
