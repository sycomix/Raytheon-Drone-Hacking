.class public final enum Lcom/google/gdata/data/contacts/Jot$Rel;
.super Ljava/lang/Enum;
.source "Jot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/Jot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/contacts/Jot$Rel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/contacts/Jot$Rel;

.field public static final enum HOME:Lcom/google/gdata/data/contacts/Jot$Rel;

.field public static final enum KEYWORDS:Lcom/google/gdata/data/contacts/Jot$Rel;

.field public static final enum OTHER:Lcom/google/gdata/data/contacts/Jot$Rel;

.field public static final enum USER:Lcom/google/gdata/data/contacts/Jot$Rel;

.field public static final enum WORK:Lcom/google/gdata/data/contacts/Jot$Rel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/contacts/Jot$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->HOME:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 59
    new-instance v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    const-string v1, "KEYWORDS"

    invoke-direct {v0, v1, v3}, Lcom/google/gdata/data/contacts/Jot$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->KEYWORDS:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 62
    new-instance v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/google/gdata/data/contacts/Jot$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->OTHER:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 65
    new-instance v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    const-string v1, "USER"

    invoke-direct {v0, v1, v5}, Lcom/google/gdata/data/contacts/Jot$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->USER:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 68
    new-instance v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v6}, Lcom/google/gdata/data/contacts/Jot$Rel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->WORK:Lcom/google/gdata/data/contacts/Jot$Rel;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/gdata/data/contacts/Jot$Rel;

    sget-object v1, Lcom/google/gdata/data/contacts/Jot$Rel;->HOME:Lcom/google/gdata/data/contacts/Jot$Rel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/gdata/data/contacts/Jot$Rel;->KEYWORDS:Lcom/google/gdata/data/contacts/Jot$Rel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/gdata/data/contacts/Jot$Rel;->OTHER:Lcom/google/gdata/data/contacts/Jot$Rel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/contacts/Jot$Rel;->USER:Lcom/google/gdata/data/contacts/Jot$Rel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/contacts/Jot$Rel;->WORK:Lcom/google/gdata/data/contacts/Jot$Rel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Jot$Rel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/contacts/Jot$Rel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Jot$Rel;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/contacts/Jot$Rel;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/gdata/data/contacts/Jot$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Jot$Rel;

    invoke-virtual {v0}, [Lcom/google/gdata/data/contacts/Jot$Rel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/contacts/Jot$Rel;

    return-object v0
.end method
