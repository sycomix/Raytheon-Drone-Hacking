.class public final enum Lcom/google/gdata/data/contacts/Website$Rel;
.super Ljava/lang/Enum;
.source "Website.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/contacts/Website;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/gdata/data/contacts/Website$Rel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum BLOG:Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum FTP:Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum HOME:Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum HOME_PAGE:Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum OTHER:Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum PROFILE:Lcom/google/gdata/data/contacts/Website$Rel;

.field public static final enum WORK:Lcom/google/gdata/data/contacts/Website$Rel;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "BLOG"

    const-string v2, "blog"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->BLOG:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 78
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "FTP"

    const-string v2, "ftp"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->FTP:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 81
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "HOME"

    const-string v2, "home"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->HOME:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 84
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "HOME_PAGE"

    const-string v2, "home-page"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->HOME_PAGE:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 87
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->OTHER:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 90
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "PROFILE"

    const/4 v2, 0x5

    const-string v3, "profile"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->PROFILE:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 93
    new-instance v0, Lcom/google/gdata/data/contacts/Website$Rel;

    const-string v1, "WORK"

    const/4 v2, 0x6

    const-string v3, "work"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/contacts/Website$Rel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->WORK:Lcom/google/gdata/data/contacts/Website$Rel;

    .line 72
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/gdata/data/contacts/Website$Rel;

    sget-object v1, Lcom/google/gdata/data/contacts/Website$Rel;->BLOG:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/gdata/data/contacts/Website$Rel;->FTP:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/gdata/data/contacts/Website$Rel;->HOME:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/gdata/data/contacts/Website$Rel;->HOME_PAGE:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/gdata/data/contacts/Website$Rel;->OTHER:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/gdata/data/contacts/Website$Rel;->PROFILE:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/gdata/data/contacts/Website$Rel;->WORK:Lcom/google/gdata/data/contacts/Website$Rel;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Website$Rel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/google/gdata/data/contacts/Website$Rel;->value:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gdata/data/contacts/Website$Rel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/google/gdata/data/contacts/Website$Rel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/contacts/Website$Rel;

    return-object v0
.end method

.method public static values()[Lcom/google/gdata/data/contacts/Website$Rel;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/gdata/data/contacts/Website$Rel;->$VALUES:[Lcom/google/gdata/data/contacts/Website$Rel;

    invoke-virtual {v0}, [Lcom/google/gdata/data/contacts/Website$Rel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gdata/data/contacts/Website$Rel;

    return-object v0
.end method


# virtual methods
.method public toValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/gdata/data/contacts/Website$Rel;->value:Ljava/lang/String;

    return-object v0
.end method
