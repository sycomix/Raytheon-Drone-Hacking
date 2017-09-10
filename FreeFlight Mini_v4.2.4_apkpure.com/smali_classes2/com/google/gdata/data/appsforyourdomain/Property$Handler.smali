.class Lcom/google/gdata/data/appsforyourdomain/Property$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Property.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/appsforyourdomain/Property;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/appsforyourdomain/Property;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/Property;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Property;

    .line 109
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Property;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 110
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Property;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Property;->name:Ljava/lang/String;

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Property;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Property;->val:Ljava/lang/String;

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
    .line 127
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Property;

    iget-object v0, v0, Lcom/google/gdata/data/appsforyourdomain/Property;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "apps:property/@name is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Property$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Property;

    iget-object v0, v0, Lcom/google/gdata/data/appsforyourdomain/Property;->val:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 131
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "apps:property/@value is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    return-void
.end method
