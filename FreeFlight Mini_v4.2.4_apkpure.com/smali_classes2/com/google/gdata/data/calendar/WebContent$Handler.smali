.class Lcom/google/gdata/data/calendar/WebContent$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "WebContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/calendar/WebContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/calendar/WebContent;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/calendar/WebContent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object p1, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    .line 170
    invoke-static {p1, v0}, Lcom/google/gdata/data/calendar/WebContent;->access$002(Lcom/google/gdata/data/calendar/WebContent;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-static {p1, v0}, Lcom/google/gdata/data/calendar/WebContent;->access$102(Lcom/google/gdata/data/calendar/WebContent;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    invoke-static {p1, v0}, Lcom/google/gdata/data/calendar/WebContent;->access$202(Lcom/google/gdata/data/calendar/WebContent;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    invoke-static {p1, v0}, Lcom/google/gdata/data/calendar/WebContent;->access$302(Lcom/google/gdata/data/calendar/WebContent;Ljava/util/Map;)Ljava/util/Map;

    .line 174
    return-void
.end method


# virtual methods
.method addGadgetPref(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-static {v0}, Lcom/google/gdata/data/calendar/WebContent;->access$300(Lcom/google/gdata/data/calendar/WebContent;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/google/gdata/data/calendar/WebContent;->access$302(Lcom/google/gdata/data/calendar/WebContent;Ljava/util/Map;)Ljava/util/Map;

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-static {v0}, Lcom/google/gdata/data/calendar/WebContent;->access$300(Lcom/google/gdata/data/calendar/WebContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 196
    const-string v0, "http://schemas.google.com/gCal/2005"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "webContentGadgetPref"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;

    iget-object v1, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-direct {v0, v1, p0}, Lcom/google/gdata/data/calendar/WebContent$GadgetPrefHandler;-><init>(Lcom/google/gdata/data/calendar/WebContent;Lcom/google/gdata/data/calendar/WebContent$Handler;)V

    .line 199
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/calendar/WebContent;->setWidth(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/calendar/WebContent;->setHeight(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_3
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/gdata/data/calendar/WebContent$Handler;->this$0:Lcom/google/gdata/data/calendar/WebContent;

    invoke-virtual {v0, p3}, Lcom/google/gdata/data/calendar/WebContent;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
