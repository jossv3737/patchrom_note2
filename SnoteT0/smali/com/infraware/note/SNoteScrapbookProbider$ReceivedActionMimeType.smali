.class final enum Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;
.super Ljava/lang/Enum;
.source "SNoteScrapbookProbider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/note/SNoteScrapbookProbider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ReceivedActionMimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

.field public static final enum Image:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

.field public static final enum Text:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

.field public static final enum Unsupported:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    const-string v1, "Unsupported"

    invoke-direct {v0, v1, v2}, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->Unsupported:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    new-instance v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    const-string v1, "Image"

    invoke-direct {v0, v1, v3}, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->Image:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    new-instance v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    const-string v1, "Text"

    invoke-direct {v0, v1, v4}, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->Text:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    sget-object v1, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->Unsupported:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->Image:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->Text:Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->ENUM$VALUES:[Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    return-object v0
.end method

.method public static values()[Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;->ENUM$VALUES:[Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/note/SNoteScrapbookProbider$ReceivedActionMimeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
