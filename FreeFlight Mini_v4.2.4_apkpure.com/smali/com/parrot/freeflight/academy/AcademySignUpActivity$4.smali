.class synthetic Lcom/parrot/freeflight/academy/AcademySignUpActivity$4;
.super Ljava/lang/Object;
.source "AcademySignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/AcademySignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$parrot$arsdk$aracademy$ARACADEMY_ERROR_ENUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 216
    invoke-static {}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->values()[Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$4;->$SwitchMap$com$parrot$arsdk$aracademy$ARACADEMY_ERROR_ENUM:[I

    :try_start_0
    sget-object v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$4;->$SwitchMap$com$parrot$arsdk$aracademy$ARACADEMY_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_CONNECTION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/parrot/freeflight/academy/AcademySignUpActivity$4;->$SwitchMap$com$parrot$arsdk$aracademy$ARACADEMY_ERROR_ENUM:[I

    sget-object v1, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_REQUEST_AUTHENTICATION:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
