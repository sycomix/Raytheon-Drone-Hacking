.class public Lcom/parrot/arsdk/aracademy/ARAcademyException;
.super Ljava/lang/Exception;
.source "ARAcademyException.java"


# instance fields
.field private error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    sget-object v0, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyException;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 11
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 20
    invoke-static {p1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyException;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyException;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 16
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyException;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyException;->error:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 31
    return-void
.end method
