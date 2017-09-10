.class Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/appsforyourdomain/migration/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/appsforyourdomain/migration/Label;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/migration/Label;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    .line 142
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 143
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "labelName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    .line 154
    :cond_0
    return-void
.end method

.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/migration/Label$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/migration/Label;

    iget-object v0, v0, Lcom/google/gdata/data/appsforyourdomain/migration/Label;->labelName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/google/gdata/util/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/gdata/data/appsforyourdomain/Namespaces;->APPS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "labelName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 167
    return-void
.end method
