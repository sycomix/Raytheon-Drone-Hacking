.class Lcom/google/api/gbase/client/GmPublishingPriority$1;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "GmPublishingPriority.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/api/gbase/client/GmPublishingPriority;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/gbase/client/GmPublishingPriority;


# direct methods
.method constructor <init>(Lcom/google/api/gbase/client/GmPublishingPriority;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->this$0:Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v2, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->value:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 127
    new-instance v2, Lcom/google/gdata/util/ParseException;

    const-string v3, "No value specified for publishing_priority element."

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/api/gbase/client/GmPublishingPriority$Value;->getByText(Ljava/lang/String;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    move-result-object v0

    .line 133
    .local v0, "parsedValue":Lcom/google/api/gbase/client/GmPublishingPriority$Value;
    if-nez v0, :cond_1

    .line 134
    new-instance v2, Lcom/google/gdata/util/ParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value specified for publishing_priority element: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/google/api/gbase/client/GmPublishingPriority$1;->this$0:Lcom/google/api/gbase/client/GmPublishingPriority;

    invoke-static {v2, v0}, Lcom/google/api/gbase/client/GmPublishingPriority;->access$002(Lcom/google/api/gbase/client/GmPublishingPriority;Lcom/google/api/gbase/client/GmPublishingPriority$Value;)Lcom/google/api/gbase/client/GmPublishingPriority$Value;

    .line 139
    return-void
.end method
