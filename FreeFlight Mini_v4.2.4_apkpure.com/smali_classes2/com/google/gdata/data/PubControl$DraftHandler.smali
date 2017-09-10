.class Lcom/google/gdata/data/PubControl$DraftHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "PubControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/PubControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraftHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/PubControl;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/PubControl;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/gdata/data/PubControl$DraftHandler;->this$0:Lcom/google/gdata/data/PubControl;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/PubControl;Lcom/google/gdata/data/PubControl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/PubControl;
    .param p2, "x1"    # Lcom/google/gdata/data/PubControl$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/gdata/data/PubControl$DraftHandler;-><init>(Lcom/google/gdata/data/PubControl;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/PubControl$DraftHandler;->this$0:Lcom/google/gdata/data/PubControl;

    invoke-static {v0}, Lcom/google/gdata/data/PubControl;->access$200(Lcom/google/gdata/data/PubControl;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateDraft:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/PubControl$DraftHandler;->value:Ljava/lang/String;

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/PubControl$DraftHandler;->this$0:Lcom/google/gdata/data/PubControl;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/data/PubControl;->access$202(Lcom/google/gdata/data/PubControl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/PubControl$DraftHandler;->value:Ljava/lang/String;

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/PubControl$DraftHandler;->this$0:Lcom/google/gdata/data/PubControl;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/gdata/data/PubControl;->access$202(Lcom/google/gdata/data/PubControl;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->invalidDraft:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0
.end method
