.class public Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "XhtmlTextConstruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/XhtmlTextConstruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/XhtmlTextConstruct;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/XhtmlTextConstruct;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 184
    iput-object p1, p0, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;->this$0:Lcom/google/gdata/data/XhtmlTextConstruct;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 185
    new-instance v0, Lcom/google/gdata/util/XmlBlob;

    invoke-direct {v0}, Lcom/google/gdata/util/XmlBlob;-><init>()V

    iput-object v0, p1, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    .line 186
    iget-object v0, p1, Lcom/google/gdata/data/XhtmlTextConstruct;->xhtml:Lcom/google/gdata/util/XmlBlob;

    invoke-virtual {p0, v0, v1, v1}, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;->initializeXmlBlob(Lcom/google/gdata/util/XmlBlob;ZZ)V

    .line 187
    iget-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/gdata/data/XhtmlTextConstruct;->lang:Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lang"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;->this$0:Lcom/google/gdata/data/XhtmlTextConstruct;

    iget-object v1, p0, Lcom/google/gdata/data/XhtmlTextConstruct$AtomHandler;->xmlLang:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/XhtmlTextConstruct;->lang:Ljava/lang/String;

    .line 204
    :cond_0
    return-void
.end method
