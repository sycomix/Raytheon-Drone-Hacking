.class Lcom/google/gdata/data/codesearch/Package$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Package.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/codesearch/Package;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/codesearch/Package;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/codesearch/Package;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/gdata/data/codesearch/Package$Handler;->this$0:Lcom/google/gdata/data/codesearch/Package;

    .line 94
    const-class v0, Lcom/google/gdata/data/codesearch/Package;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 95
    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const-string v0, "name"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Package$Handler;->this$0:Lcom/google/gdata/data/codesearch/Package;

    iput-object p3, v0, Lcom/google/gdata/data/codesearch/Package;->name:Ljava/lang/String;

    .line 106
    :cond_0
    const-string v0, "uri"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Package$Handler;->this$0:Lcom/google/gdata/data/codesearch/Package;

    iput-object p3, v0, Lcom/google/gdata/data/codesearch/Package;->uri:Ljava/lang/String;

    .line 111
    :cond_1
    return-void
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Package$Handler;->this$0:Lcom/google/gdata/data/codesearch/Package;

    iget-object v0, v0, Lcom/google/gdata/data/codesearch/Package;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "http://schemas.google.com/codesearch/2006package/@name is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Package$Handler;->this$0:Lcom/google/gdata/data/codesearch/Package;

    iget-object v0, v0, Lcom/google/gdata/data/codesearch/Package;->uri:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "http://schemas.google.com/codesearch/2006package/@uri is required."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_1
    return-void
.end method
