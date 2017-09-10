.class Lcom/google/gdata/data/extensions/PhoneNumber$Handler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "PhoneNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/PhoneNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/PhoneNumber;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/extensions/PhoneNumber;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->this$0:Lcom/google/gdata/data/extensions/PhoneNumber;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/extensions/PhoneNumber;Lcom/google/gdata/data/extensions/PhoneNumber$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/extensions/PhoneNumber;
    .param p2, "x1"    # Lcom/google/gdata/data/extensions/PhoneNumber$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;-><init>(Lcom/google/gdata/data/extensions/PhoneNumber;)V

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
    .line 142
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    const-string v1, "rel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->this$0:Lcom/google/gdata/data/extensions/PhoneNumber;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/PhoneNumber;->rel:Ljava/lang/String;

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v1, "label"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->this$0:Lcom/google/gdata/data/extensions/PhoneNumber;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/PhoneNumber;->label:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "uri"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->this$0:Lcom/google/gdata/data/extensions/PhoneNumber;

    iput-object p3, v1, Lcom/google/gdata/data/extensions/PhoneNumber;->uri:Ljava/lang/String;

    goto :goto_0

    .line 149
    :cond_3
    const-string v1, "primary"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->parseBooleanValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 151
    .local v0, "pr":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->this$0:Lcom/google/gdata/data/extensions/PhoneNumber;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    iput-boolean v1, v2, Lcom/google/gdata/data/extensions/PhoneNumber;->primary:Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->this$0:Lcom/google/gdata/data/extensions/PhoneNumber;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/extensions/PhoneNumber;->phoneNumber:Ljava/lang/String;

    .line 159
    return-void
.end method
