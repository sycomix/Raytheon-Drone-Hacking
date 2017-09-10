.class public Lcom/google/gdata/data/Generator$AtomHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AtomHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/Generator;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/Generator;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/gdata/data/Generator$AtomHandler;->this$0:Lcom/google/gdata/data/Generator;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "version"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/google/gdata/data/Generator$AtomHandler;->this$0:Lcom/google/gdata/data/Generator;

    iput-object p3, v0, Lcom/google/gdata/data/Generator;->version:Ljava/lang/String;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "uri"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/gdata/data/Generator$AtomHandler;->this$0:Lcom/google/gdata/data/Generator;

    iput-object p3, v0, Lcom/google/gdata/data/Generator;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/data/Generator$AtomHandler;->this$0:Lcom/google/gdata/data/Generator;

    iget-object v1, p0, Lcom/google/gdata/data/Generator$AtomHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/Generator;->name:Ljava/lang/String;

    .line 90
    return-void
.end method
