.class Lcom/google/gdata/data/extensions/PostalAddress$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "PostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/PostalAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/PostalAddress;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/extensions/PostalAddress;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/extensions/PostalAddress;Lcom/google/gdata/data/extensions/PostalAddress$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/extensions/PostalAddress;
    .param p2, "x1"    # Lcom/google/gdata/data/extensions/PostalAddress$1;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/gdata/data/extensions/PostalAddress$Handler;-><init>(Lcom/google/gdata/data/extensions/PostalAddress;)V

    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    const-string v1, "rel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/PostalAddress;->rel:Ljava/lang/String;

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v1, "label"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/PostalAddress;->label:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "primary"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->parseBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 121
    .local v0, "pr":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    iput-boolean v1, v2, Lcom/google/gdata/data/extensions/PostalAddress;->primary:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->this$0:Lcom/google/gdata/data/extensions/PostalAddress;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/extensions/PostalAddress;->value:Ljava/lang/String;

    .line 129
    return-void
.end method
