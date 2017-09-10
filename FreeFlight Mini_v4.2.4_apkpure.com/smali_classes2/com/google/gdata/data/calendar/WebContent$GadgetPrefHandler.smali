.class Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "WebContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/calendar/WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GadgetPrefHandler"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private parentHandler:Lcom/google/gdata/data/calendar/WebContent$Handler;

.field final synthetic this$0:Lcom/google/gdata/data/calendar/WebContent;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/calendar/WebContent;Lcom/google/gdata/data/calendar/WebContent$Handler;)V
    .locals 1
    .param p2, "parentHandler"    # Lcom/google/gdata/data/calendar/WebContent$Handler;

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->parentHandler:Lcom/google/gdata/data/calendar/WebContent$Handler;

    .line 222
    iput-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->name:Ljava/lang/String;

    .line 223
    iput-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->value:Ljava/lang/String;

    .line 224
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
    .line 231
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iput-object p3, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->name:Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_2
    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iput-object p3, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->parentHandler:Lcom/google/gdata/data/calendar/WebContent$Handler;

    iget-object v1, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/gdata/data/calendar/WebContent$Handler;->addGadgetPref(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 245
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "name attribute defined but not value"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "value attribute defined but not name"

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
