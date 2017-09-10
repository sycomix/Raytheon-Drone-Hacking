.class Lcom/google/gdata/data/appsforyourdomain/Name$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/appsforyourdomain/Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/appsforyourdomain/Name;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/appsforyourdomain/Name;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/gdata/data/appsforyourdomain/Name$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Name;

    .line 117
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/Name;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 118
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "familyName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Name$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Name;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Name;->familyName:Ljava/lang/String;

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v0, "givenName"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/gdata/data/appsforyourdomain/Name$Handler;->this$0:Lcom/google/gdata/data/appsforyourdomain/Name;

    iput-object p3, v0, Lcom/google/gdata/data/appsforyourdomain/Name;->givenName:Ljava/lang/String;

    goto :goto_0
.end method
