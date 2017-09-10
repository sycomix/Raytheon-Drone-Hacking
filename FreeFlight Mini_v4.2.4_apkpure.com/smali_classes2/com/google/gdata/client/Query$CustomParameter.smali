.class public Lcom/google/gdata/client/Query$CustomParameter;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomParameter"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    iput-object p1, p0, Lcom/google/gdata/client/Query$CustomParameter;->name:Ljava/lang/String;

    .line 624
    iput-object p2, p0, Lcom/google/gdata/client/Query$CustomParameter;->value:Ljava/lang/String;

    .line 625
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/client/Query$CustomParameter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/Query$CustomParameter;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/gdata/client/Query$CustomParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/gdata/client/Query$CustomParameter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/client/Query$CustomParameter;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/gdata/client/Query$CustomParameter;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/gdata/client/Query$CustomParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/gdata/client/Query$CustomParameter;->value:Ljava/lang/String;

    return-object v0
.end method
