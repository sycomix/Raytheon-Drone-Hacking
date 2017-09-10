.class public Lcom/google/api/gbase/client/ServiceError;
.super Ljava/lang/Object;
.source "ServiceError.java"


# static fields
.field public static final DATA_TYPE:Ljava/lang/String; = "data"

.field public static final REQUEST_TYPE:Ljava/lang/String; = "request"


# instance fields
.field private final field:Ljava/lang/String;

.field private final reason:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, v0, p1}, Lcom/google/api/gbase/client/ServiceError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/api/gbase/client/ServiceError;->type:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/api/gbase/client/ServiceError;->field:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/google/api/gbase/client/ServiceError;->reason:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceError;->field:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceError;->field:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/api/gbase/client/ServiceError;->reason:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceError;->field:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/gbase/client/ServiceError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
