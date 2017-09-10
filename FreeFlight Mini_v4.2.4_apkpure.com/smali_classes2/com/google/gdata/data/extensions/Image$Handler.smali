.class Lcom/google/gdata/data/extensions/Image$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Image;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Image;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Image$Handler;->this$0:Lcom/google/gdata/data/extensions/Image;

    .line 161
    const-class v0, Lcom/google/gdata/data/extensions/Image;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 162
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
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "rel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image$Handler;->this$0:Lcom/google/gdata/data/extensions/Image;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Image;->rel:Ljava/lang/String;

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image$Handler;->this$0:Lcom/google/gdata/data/extensions/Image;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Image;->width:Ljava/lang/Integer;

    goto :goto_0

    .line 174
    :cond_2
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image$Handler;->this$0:Lcom/google/gdata/data/extensions/Image;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Image;->height:Ljava/lang/Integer;

    goto :goto_0

    .line 176
    :cond_3
    const-string v0, "src"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image$Handler;->this$0:Lcom/google/gdata/data/extensions/Image;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/Image;->src:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Image$Handler;->this$0:Lcom/google/gdata/data/extensions/Image;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Image;->src:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->missingSrcAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 189
    :cond_0
    return-void
.end method
