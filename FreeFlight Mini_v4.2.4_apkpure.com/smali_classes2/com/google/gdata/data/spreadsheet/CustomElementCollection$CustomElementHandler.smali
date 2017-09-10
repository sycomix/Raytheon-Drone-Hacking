.class Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "CustomElementCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/spreadsheet/CustomElementCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomElementHandler"
.end annotation


# instance fields
.field private tagName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;)V
    .locals 0
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 236
    iput-object p2, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->tagName:Ljava/lang/String;

    .line 237
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public processEndElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->access$000(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->tagName:Ljava/lang/String;

    new-instance v2, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;-><init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-static {v0}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection;->access$000(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->tagName:Ljava/lang/String;

    new-instance v2, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;

    iget-object v3, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    iget-object v4, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElementHandler;->value:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;-><init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
